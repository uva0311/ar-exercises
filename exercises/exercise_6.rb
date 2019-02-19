require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "mrar", last_name: "ani", hourly_rate: 55)
@store1.employees.create(first_name: "hurram", last_name: "Vni", hourly_rate: 40)
@store2.employees.create(first_name: "ahrram", last_name: "ira", hourly_rate: 30)
@store2.employees.create(first_name: "dKhm", last_name: "irani", hourly_rate: 70)

pp @store1.employees