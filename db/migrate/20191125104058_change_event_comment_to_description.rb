class ChangeEventCommentToDescription < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :description, :string
    remove_column :events, :comment
  end
end
