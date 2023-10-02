require_relative 'ar.rb'

10.times do
    new_categ = Category.new(
        name: Faker::Lorem.unique.word,
        description: Faker::Lorem.unique.sentence
    )
    new_categ.save
    categ_id = Category.where(:id => new_categ.id).first
    10.times do
        new_prod = categ_id.products.build(
            name: Faker::Lorem.unique.word,
            description: Faker::Lorem.unique.sentence,
            price: Faker::Number.between(from: 1, to: 1000),
            stock_quantity: Faker::Number.between(from: 1, to: 1000)
        )
        new_prod.save
    end
end