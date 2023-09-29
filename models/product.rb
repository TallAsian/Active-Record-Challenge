class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.

  #In a comment within your product.rb file, record all the columns that exist in the products table.
  #Columns: id, name, description, price, stock_quantity, category_id, created_at, updated_at

  #Based on the columns you find, can you determine if the products table has an association with any other tables? If so, what table?
  #Answer: Category class

  belongs_to :category

  #Validations
  validates :name, :description, :price, :stock_quantity, presence: true
  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}
end