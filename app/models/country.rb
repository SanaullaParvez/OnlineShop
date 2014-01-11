class Country < ActiveRecord::Base
  attr_accessible :iso_code, :name
  has_many :cities
  has_many :users
  has_many :customers

end
