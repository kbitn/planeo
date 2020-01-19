class GroupsController < ApplicationController
  def index
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user
    @group.administrator = current_user
    if @group.name.empty?
      flash[:alert]
      render :new
    elsif @group.save!
      redirect_to groups_path
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
    redirect_to root_path, notice: 'You do not belong to this group' unless @group.users.include?(current_user)
    @event = Event.new
    mytemp = @group.events.organized_by(current_user)
    mytemp1 = mytemp.select { |ev| ev.confirmed_date }.sort_by { |ev| ev.confirmed_date.date }
    mytemp2 = mytemp.reject { |ev| ev.confirmed_date }
    @myevents = mytemp1 + mytemp2
    organizedtemp = @group.events.not_organized_by(current_user)
    temp1 = organizedtemp.select { |ev| ev.confirmed_date }.sort_by { |ev| ev.confirmed_date.date }
    temp2 = organizedtemp.reject { |ev| ev.confirmed_date }
    @organizedevents = temp1 + temp2
    @proposedevents = @group.events.proposed
  end

  def edit
    @group = Group.find(params[:id])
    redirect_to root_path, notice: 'You do not belong to this group' unless @group.users.include?(current_user)
  end

  def update
    @group = Group.find(params[:id])
    redirect_to groups_path
  end

  def destroy
    Group.destroy(params[:id])
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :photo)
  end
end
