class Cart < ActiveRecord::Base
  attr_accessible :purchased_at
  has_many :line_items
  has_many :payment_notifications

  def total_price
    # convert to array so it doesn't try to do sum on database directly
    line_items.to_a.sum(&:full_price)
  end
  # attr_accessible :title, :body
  def paypal_url(return_url, notify_url)
    values = {
        :business => 'monsur.it-facilitator@gmail.com',
        :cmd => '_cart',
        :upload => 1,
        :return => return_url,
        :invoice => id,
        :notify_url => notify_url
    }
    #raise line_items.inspect
    line_items.each_with_index do |item, index|
      values.merge!({
                        "amount_#{index+1}" => item.unit_price,
                        "item_name_#{index+1}" => item.post.title,
                        "item_number_#{index+1}" => item.id,
                        "quantity_#{index+1}" => item.quantity
                    })
    end
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.map { |k,v| "#{k}=#{v}"  }.join("&")
  end
end
