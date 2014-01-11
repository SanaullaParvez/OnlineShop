class City < ActiveRecord::Base
  attr_accessible :iso_code, :name, :country_id
  belongs_to :country
  has_many :customer
end
