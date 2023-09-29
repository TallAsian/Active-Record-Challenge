require_relative 'ar.rb'

x=0
y=0
10.times do
    tests = Category.new(
        name: Faker::Food.dish,
        description: Faker::Food.description
    )
    10.times do
        testing = Product.new(
            name: Faker::Food.allergen,
            description: Faker::Food.description,
            price: Faker::Number.between(from: 1, to: 1000),
            stock_quantity: Faker::Number.between(from: 1, to: 1000)
        )
    end
end