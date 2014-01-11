class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :iso_code
      t.string :name

      t.timestamps
    end
  end
end
