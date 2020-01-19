class AddReferencesToUsergroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :usergroups, :user, foreign_key: true
    add_reference :usergroups, :group, foreign_key: true
  end
end
