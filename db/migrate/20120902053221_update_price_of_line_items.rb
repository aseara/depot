class UpdatePriceOfLineItems < ActiveRecord::Migration
  def up
    LineItem.all.each do |line_item|
      LineItem.update line_item, price: line_item.product.price
    end
  end

  def down
    LineItem.all.each do |line_item|
      LineItem.update line_item, price: 0.01
    end
  end
end