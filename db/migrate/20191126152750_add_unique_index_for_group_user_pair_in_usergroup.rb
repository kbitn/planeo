class AddUniqueIndexForGroupUserPairInUsergroup < ActiveRecord::Migration[5.2]
  def change
    add_index :usergroups, [:user_id, :group_id], unique: true
  end
end
