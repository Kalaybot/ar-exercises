require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# One to many association
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

# Create employee for store 1
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 55)
@store1.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 50)

# Create employee for store 2
@store2.employees.create(first_name: "Alice", last_name: "Johnson", hourly_rate: 70)
@store2.employees.create(first_name: "Bob", last_name: "Brown", hourly_rate: 65)
@store2.employees.create(first_name: "Charlie", last_name: "Davis", hourly_rate: 60)