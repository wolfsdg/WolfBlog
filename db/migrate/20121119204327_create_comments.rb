class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :alias
      t.text :message

      t.timestamps
    end
  end
end
