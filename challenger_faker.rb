require_relative 'ar.rb'

10.times do
    tests = Category.new(
        name: Faker::Lorem.word,
        description: Faker::Lorem.sentence
    )
    tests.save
    cat_id = Category.where(:id => tests.id).first
    10.times do
        testing = cat_id.products.build(
            name: Faker::Lorem.word,
            description: Faker::Lorem.sentence,
            price: Faker::Number.between(from: 1, to: 1000),
            stock_quantity: Faker::Number.between(from: 1, to: 1000)
        )
        testing.save
    end
end