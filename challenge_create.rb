require_relative 'ar.rb'

#create product version 1
milk = Product.new

milk.name = "Milk"
milk.description = "A dairy product created by cows"
milk.price = 12
milk.stock_quantity = 75

if(milk.save)
    puts "Product was added into the database."
else
    milk.errors.messages.each do |column, errors|
        errors.each do |error|
            puts "The #{column} property #{error}"
        end
    end
end

#create product version 2
sushi = Product.new( name: "Sushi",
    description: "A staple rice dish of Japanese cuisine",
    price: 15,
    stock_quantity: 90 )

if(sushi.save)
    puts "Product was added into the database."
else
    sushi.errors.messages.each do |column, errors|
        errors.each do |error|
            puts "The #{column} property #{error}"
        end
    end
end

#create product version 3
water = Product.create(name: "Water",
    description: "water?",
    stock_quantity: 15 )

if(water.save)
    puts "Product was added into the database."
else
    water.errors.messages.each do |column, errors|
        errors.each do |error|
            puts "The #{column} property #{error}"
        end
    end
end