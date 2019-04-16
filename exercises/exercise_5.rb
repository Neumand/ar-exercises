require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum("annual_revenue")
puts "Total company revenue is #{total_revenue}"

avg_annual_revenue = Store.average("annual_revenue")
puts "Average annual revenue is #{avg_annual_revenue}"

nb_stores_over_1M = Store.where("annual_revenue > 1000000").count
puts "There are #{nb_stores_over_1M} stores with over 1M in annual revenue"