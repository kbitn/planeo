class EventDatesController < ApplicationController
  def confirm
    @event_date = EventDate.find(params[:id])
    @event_date.update(confirmed: true)

    redirect_to event_path(@event_date.event)
  end
end
