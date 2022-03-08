require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts 'Exercise 4'
puts '----------'

# Your code goes here ...
surrey = Store.new
surrey.name = 'Surrey'
surrey.annual_revenue = 224_000
surrey.mens_apparel = false
surrey.womens_apparel = true
surrey.save

whistler = Store.new
whistler.name = 'Whistler'
whistler.annual_revenue = 1_900_000
whistler.mens_apparel = true
whistler.womens_apparel = false
whistler.save

yaletown = Store.new
yaletown.name = 'Yaletown'
yaletown.annual_revenue = 430_000
yaletown.mens_apparel = true
yaletown.womens_apparel = true
yaletown.save

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "Mens store: #{store.name} #{store.annual_revenue}"
end

@womens_stores = Store.where('annual_revenue < ?', 1_000_000).where(womens_apparel: true)

@womens_stores.each do |store|
  puts "Womans store: #{store.name} #{store.annual_revenue}"
end
