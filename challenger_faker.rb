require_relative 'ar.rb'

while x < 10
    tests = Category.new(
        name: Faker::Food.dish,
        description: Faker::Food.description
    )
    while y < 10
        testing = Product.new(
            name: Faker::Food.allergen,
            description: Faker::Food.description,
            price: Faker:Number.number(from: 1, to: 4),
            stock_quantity: Faker:Number.number(from:1, to: 3)
        )
    end
end