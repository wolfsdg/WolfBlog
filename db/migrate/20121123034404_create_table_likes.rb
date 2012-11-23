class CreateTableLikes < ActiveRecord::Migration
  def change
    create_table(:likes) do |t|
      t.string :comment_id
      t.integer :user_id
      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :comment_id
  end
end
