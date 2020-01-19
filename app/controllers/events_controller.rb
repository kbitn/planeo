class EventsController < ApplicationController
  before_action :set_group, only: [:create]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :get_action_params, only: [:edit, :create]

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    redirect_to root_path, notice: 'You do not belong to this group' unless @event.group.users.include?(current_user)
    @marker = { lat: @event.latitude, lng: @event.longitude }
    @vote = Vote.new
    @comment = Comment.new
  end

  def create
    @event = Event.new(event_params)
    @event.group = @group
    if @event.time != nil
      timehash = @event.time.gsub('}', "").split(",")
      hour = timehash[3].split("=>")[1]
      minute = timehash[4].split("=>")[1]
      time = hour + ':' + minute
    else
      time = "21:00"
    end
    @event.time = time
    @marker = { lat: 40.398471, lng: -3.686408 }
    if params[:commit] == "Propose"
      @event.state = "proposed"
      @event.organizer = current_user
      if @event.save
        redirect_to group_path(@group)
      else
        redirect_to group_path(@group), notice: 'The name cannot be empty'
      end
    elsif params[:commit] == "Organize"
      @event.state = "organized"
      @event.organizer = current_user
      if @event.save
        @event.event_dates.build
        render :edit
      else
        redirect_to group_path(@group), notice: 'The name cannot be empty'
      end
    end
  end

  def edit
    @event.event_dates.build if @event.state == "proposed"
    redirect_to root_path, notice: 'You do not belong to this group' unless @event.group.users.include?(current_user)
    @event.latitude != nil ? @marker = { lat: @event.latitude, lng: @event.longitude } : @marker = { lat: 40.398471, lng: -3.686408 }
  end

  def update
    if params[:event][:event_dates_attributes].nil?
      params[:address] = @event.address if params[:address].nil?
      @event.update(event_edit_params)
      redirect_to event_path(@event)
    elsif params[:event][:event_dates_attributes]["0"]["date"] == ""
      redirect_to edit_event_path(@event), notice: 'You must include a date'
    else
      @event.state = "organized" if @event.state == "proposed"
      @event.remote_photo_url = "https://images.unsplash.com/photo-1511632765486-a01980e01a18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" if @event.photo.identifier.nil?
      @event.organizer = current_user
      params[:address] = @event.address if params[:address].nil?
      @event.update(event_params)
      redirect_to event_path(@event)
    end
  end

  def destroy
    @event.destroy
    redirect_to group_path(@event.group)
    # authorize @event
  end

  private

  def get_action_params
    @action = params[:action]
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def event_params
    params.require(:event).permit(:name, :state, :address, :photo, :organizer, :time, :description, event_dates_attributes: [:date])
  end

  def event_edit_params
    params.require(:event).permit(:name, :address, :photo, :time, :description)
  end
end
