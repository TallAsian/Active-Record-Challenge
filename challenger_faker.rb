require_relative 'ar.rb'

10.times do
    tests = Category.new(
        name: Faker::Food.dish,
        description: Faker::Food.description
    )
    tests.save
    cat_id = tests.id
    10.times do
        testing = Product.new(
            name: Faker::Food.allergen,
            description: Faker::Food.description,
            price: Faker::Number.between(from: 1, to: 1000),
            stock_quantity: Faker::Number.between(from: 1, to: 1000),
            category_id: cat_id
        )
        testing.save
    end
end