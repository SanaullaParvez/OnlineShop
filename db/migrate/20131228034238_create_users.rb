class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :address
      t.belongs_to :country
      t.belongs_to :city
      t.integer :area_code
      t.integer :phone

      t.timestamps
    end
    add_index :users, :country_id
    add_index :users, :city_id
  end
end

