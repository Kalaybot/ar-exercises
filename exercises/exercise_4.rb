require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# New store creation
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Output the number of stores using count method
puts "Number of stores: #{Store.count}"

# Fetch stores with mens apparel, assign instance variable
@mens_stores = Store.where(mens_apparel: true)

# Loop through each mens store and output name and annual revenue
@mens_stores.each do |store|
  puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores with womens apparel and annual revenue less than 1000000
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

# Loop through each womens store and output name and annual revenue
@womens_stores.each do |store|
  puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end