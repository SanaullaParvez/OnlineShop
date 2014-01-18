class Post < ActiveRecord::Base

  attr_accessible :description, :image, :price, :title, :order, :category_ids, :images_attributes , :user_id
  has_many :category_posts
  has_many :images, :dependent => :destroy
  has_many :categories, through: :category_posts
  belongs_to :user
  accepts_nested_attributes_for :images, :allow_destroy => true
end
