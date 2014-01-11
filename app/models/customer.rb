class Customer < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  belongs_to :country
  attr_accessible :address, :area_code, :name, :phone, :user_id, :city_id, :country_id

end
