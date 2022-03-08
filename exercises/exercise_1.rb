require_relative '../setup'

puts 'Exercise 1'
puts '----------'

# Your code goes below here ...
burnaby = Store.new
burnaby.name = 'burnaby'
burnaby.annual_revenue = 300_000
burnaby.mens_apparel = true
burnaby.womens_apparel = true
burnaby.save

richmond = Store.new
richmond.name = 'Richmond'
richmond.annual_revenue = 1_260_000
richmond.mens_apparel = false
richmond.womens_apparel = true
richmond.save

gastown = Store.new
gastown.name = 'gastown'
gastown.annual_revenue = 190_000
gastown.mens_apparel = true
gastown.womens_apparel = false
gastown.save

puts "Stores Made: #{Store.count}"
