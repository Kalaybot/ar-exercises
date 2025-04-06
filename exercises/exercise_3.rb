require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# Instance variables for store 3
@store3 = Store.find(3)

# Delete store 3 from the database
@store3.destroy

# Output remaining stores
puts " Number of stores: #{Store.count}"