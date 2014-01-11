class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
  def down
    drop_table :categories
  end
end
