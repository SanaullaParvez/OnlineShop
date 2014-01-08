class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
  def down
    drop_table :posts
  end
end
