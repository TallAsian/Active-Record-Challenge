require_relative 'ar.rb'

all_category = Category.all
all_products = Product.all

all_category.each do |categories|
    product = Product.where(category_id: categories.id)
    puts "Category: #{categories.name}"
    product.each do |products|
        puts "  Products: #{products.name}, #{products.price}"
    end
    puts "\r\n"
end