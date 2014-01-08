class Category < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :category_posts
  has_many :posts, through: :category_posts

end
