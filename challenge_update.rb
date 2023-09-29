require_relative 'ar.rb'

product_qty_40 = Product.where('"stock_quantity" > 40')

product_qty_40.each do |product|
    stock_qty = product.stock_quantity
    stock_qty = stock_qty + 1
    product.save
end