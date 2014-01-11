class AddCountryIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :country_id, :integer
  end
end
