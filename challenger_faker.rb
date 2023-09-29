require_relative 'ar.rb'

while x < 10
    Category.new(
        name: Faker::Food.dish
        description: Faker::Food.description
    )
end