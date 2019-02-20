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
puts "Please provide a store name"
store_name = gets.chomp

store = Store.create(id: 7, name: "#{store_name}", annual_revenue: "", mens_apparel: true, womens_apparel: "" )

if store.errors
  store.errors.each do |error|
    pp "#{error}: #{store.errors[error]}"
  end
end
