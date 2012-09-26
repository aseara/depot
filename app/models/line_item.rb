class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :order_id, :quantity, :price
  attr_accessible :product, :cart, :order

  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
    price * quantity
  end

end
