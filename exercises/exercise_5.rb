require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum("annual_revenue")
average_revenue = Store.average("annual_revenue")

high_sale_store = Store.where("annual_revenue >= ?", 1000000).count

pp "total revenue: #{total_revenue}"
pp "average revenue: #{average_revenue}"
pp "Stores has more than 1m sales: #{high_sale_store}"