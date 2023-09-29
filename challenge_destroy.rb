require_relative 'ar.rb'

sushi = Product.where(:name => "Sushi").first

sushi.destroy