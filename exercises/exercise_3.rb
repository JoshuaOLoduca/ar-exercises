require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts 'Exercise 3'
puts '----------'

# Your code goes here ...
puts "Stores Count: #{Store.count}"

Store.find_by(id: 3).destroy

puts "Stores Left: #{Store.count}"
