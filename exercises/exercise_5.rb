require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Total revenue of all stores
@total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue of the entire company: $#{@total_revenue}"

# Average annual revenue of all stores
@average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue of all stores: $#{@average_revenue}"

# Number of stores generating $1M or more in annual sales
@stores_over_1M = Store.where("annual_revenue >= ?", 1000000).size
puts "Number of stores generating $1M or more in annual sales: #{@stores_over_1M}"