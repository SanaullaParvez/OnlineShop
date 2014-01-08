class CreateCategoryPosts < ActiveRecord::Migration
  def change
    create_table :category_posts do |t|
      t.belongs_to :category
      t.belongs_to :post

      t.timestamps
    end
    add_index :category_posts, :category_id
    add_index :category_posts, :post_id
  end
end
