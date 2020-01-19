class AddAdminToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :administrator, foreign_key: { to_table: :users }
  end
end
