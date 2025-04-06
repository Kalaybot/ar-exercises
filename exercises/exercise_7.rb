require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Validation for store
class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

# Validation for employee
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

# Input user store name
puts "Enter store name:"
store_name = gets.chomp

# Attempt to create a new store
new_store = Store.new(name: store_name)

# Attempt to save the new store
if new_store.save
  puts "Store created successfully!"
else
  puts "Store could not be created due to the following errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end