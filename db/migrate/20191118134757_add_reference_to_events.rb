class AddReferenceToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :group, foreign_key: true
    add_reference :events, :organizer, foreign_key: { to_table: :users }
  end
end
