class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :state
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :photo
      t.date :deadline
      t.string :comment
      t.string :time

      t.timestamps
    end
  end
end
