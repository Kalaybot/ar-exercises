require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Assign the stores to a variable
@store1 = Store.find(1)
@store2 = Store.find(2)

# Update the first store
@store1.update(name: "Burnaby 2.0")
puts @store1.name