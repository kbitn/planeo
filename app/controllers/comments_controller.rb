class CommentsController < ApplicationController
  before_action :set_event
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.event = @event
    @comment.user = current_user
    if @comment.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :event_id)
  end
end
