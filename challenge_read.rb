require_relative 'ar.rb'

#Use the Product class to find (any) product from the database.
all_products = Product.all
all_category = Category.all

puts all_category[0].inspect

#Inspect the Product object you have retrieved. 
puts all_products[0].inspect

#Use ActiveRecord to find and print out:
#Total number of products:
puts "Total number of products: #{all_products.size}"

stock_qty = 0

#The names of all products above $10 with names that begin with the letter C:
all_products.each do |products|
    prod_name = products.name
    prod_price = products.price
    prod_stockqty = products.stock_quantity
    if prod_name.chr[0] == 'C'
        if prod_price > 10
            puts prod_name
        end
    end 

    #Find products with less than 5 stock
    if products.stock_quantity < 5
       stock_qty += 1
    end
end

#Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.):
puts "Total number of products with a low stock quantity: #{stock_qty}"

#Find the name of the category associated with one of the products you have found.
first_product = all_products[0]
puts "Category: #{first_product.category.name}"

#Find a specific category and use it to build and persist a new product associated with this category.
condiment = Category.where(:name => 'Condiments').first

ketchup = condiment.products.build( name: "Ketchup",
    description: "Made from tomatoes",
    price: 3,
    stock_quantity: 35)

ketchup.save

#Find a specific category and then use it to locate all the the associated products that cost over 10.
seafood = Category.where(:name => 'Seafood').first
seafood_id = seafood.id
all_products.each do |products|
    if seafood_id == products.category_id && products.price > 10
        puts products.name
    end
end