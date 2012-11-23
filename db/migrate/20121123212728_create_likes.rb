class CreateLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :comment_id 
    add_column :likes, :comment_id, :integer 
    add_index :likes, :comment_id
  end
end
