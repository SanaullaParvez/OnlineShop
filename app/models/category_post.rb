class CategoryPost < ActiveRecord::Base
  attr_accessible :category_id, :post_id
  belongs_to :category
  belongs_to :post
  # attr_accessible :title, :body
end
