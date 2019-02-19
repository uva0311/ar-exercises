require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create(id: 4, name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store5 = Store.create(id: 5, name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store6 = Store.create(id: 6, name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# only those stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

# Loop through each of these stores and output their name and annual revenue on each line
store = Store.select(:name, :annual_revenue)

#  load stores that carry women's apparel and are generating less than $1M in annual revenue
w_store = Store.where(mens_apparel: false, womens_apparel: true).where("annual_revenue < ?", 1000000)

pp @mens_stores
pp store
pp w_store