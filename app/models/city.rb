class City < ActiveRecord::Base
  attr_accessible :country_id, :iso_code, :name
end
