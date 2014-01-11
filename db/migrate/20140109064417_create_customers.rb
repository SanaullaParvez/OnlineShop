class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.belongs_to :user
      t.text :address
      t.belongs_to :city
      t.integer :area_code
      t.integer :phone

      t.timestamps
    end
    add_index :customers, :user_id
    add_index :customers, :city_id
  end
end
