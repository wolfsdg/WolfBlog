class AddIndexPostsComments < ActiveRecord::Migration
  def change
    add_index :posts, :user_id
    add_index :comments, :post_id
  end
end
