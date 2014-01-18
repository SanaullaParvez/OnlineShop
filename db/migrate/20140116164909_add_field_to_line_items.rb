class AddFieldToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :unit_price, :float
    add_column :line_items, :quantity, :integer
  end
end
