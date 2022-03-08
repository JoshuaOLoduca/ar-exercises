require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store1.employees.create(first_name: 'Ted', last_name: 'Mosby', hourly_rate: 160)
@store1.employees.create(first_name: 'Fed', last_name: 'Hosby', hourly_rate: 60)
@store1.employees.create(first_name: 'Cled', last_name: 'Nosby', hourly_rate: 60)

@store2.employees.create(first_name: 'Murrahk', last_name: 'Inariv', hourly_rate: 6)
@store2.employees.create(first_name: 'Det', last_name: 'Ybsom', hourly_rate: 61)
@store2.employees.create(first_name: 'Def', last_name: 'Ybsoh', hourly_rate: 6)
@store2.employees.create(first_name: 'Delc', last_name: 'Ybson', hourly_rate: 6)
