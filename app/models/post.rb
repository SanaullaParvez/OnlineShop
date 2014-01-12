class Post < ActiveRecord::Base

  attr_accessible :description, :image, :price, :title, :order, :category_ids, :images_attributes
  has_many :category_posts
  has_many :images
  has_many :categories, through: :category_posts
  accepts_nested_attributes_for :images
end
