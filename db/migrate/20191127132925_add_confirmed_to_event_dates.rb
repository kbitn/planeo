class AddConfirmedToEventDates < ActiveRecord::Migration[5.2]
  def change
    add_column :event_dates, :confirmed, :boolean, default: false
  end
end
