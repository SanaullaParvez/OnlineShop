class AddOrderToPost < ActiveRecord::Migration
  def change
    add_column :posts, :order, :integer
  end
end
