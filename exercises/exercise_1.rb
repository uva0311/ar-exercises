require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0 }
end

store1 = Store.create(id: 1, name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store2 = Store.create(id: 2, name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store3 = Store.create(id: 3, name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

pp Store.count

