# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'net/http'
require 'json'

api = 'http://makeup-api.herokuapp.com/api/v1/products.json'
uri = URI(api)
response = Net::HTTP.get(uri)
products = JSON.parse(response)

Product.destroy_all
Category.destroy_all

products.each do |makeup|
  category = Category.find_or_create_by(name: makeup['product_type'])

  Product.create!(brand: makeup['brand'],
                  name: makeup['name'],
                  description: makeup['description'],
                  price: makeup['price'],
                  image: makeup['image_link'],
                  category: makeup['product_type'])
end
