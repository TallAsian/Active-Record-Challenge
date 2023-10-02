require_relative 'ar.rb'

#Delete sushi product that was created.
sushi = Product.where(:name => "Sushi").first

sushi.destroy