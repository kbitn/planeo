class ChangeEventDatesDateToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :event_dates, :date, :date, using: 'date::date'
  end
end
