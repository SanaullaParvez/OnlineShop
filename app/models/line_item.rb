class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :post_id, :post, :cart, :quantity, :unit_price
  belongs_to :post
  belongs_to :cart

  def full_price
    unit_price * quantity
  end
end
