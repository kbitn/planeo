class VotesController < ApplicationController
  def create
    @vote = Vote.new
    @event_date = EventDate.find(params[:event_date_id])
    @vote.event_date = @event_date
    @vote.user = current_user
    @vote.save
  end

  def destroy
    vote = current_user.votes.find(params[:id])
    @event_date = vote.event_date
    vote.destroy
  end
end
