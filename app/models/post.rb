class Post < ActiveRecord::Base
  before_destroy :ensure_not_referenced_by_any_line_item

  attr_accessible :description, :image, :price, :title, :order, :category_ids, :images_attributes , :user_id
  has_many :category_posts
  has_many :images
  has_many :line_items
  has_many :categories, through: :category_posts
  belongs_to :user
  accepts_nested_attributes_for :images

  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors.add(:base, 'Line Items present' )
      return false
    end
  end
end
