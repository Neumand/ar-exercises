require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)

Store.create(name: "Whistler", annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)

Store.create(name: "Yaletown", annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

mens_only = Store.where(womens_apparel: false).each do |info|
  puts "Location: #{info.name}, Annual Revenue: #{info.annual_revenue}"
end

womens_under_1M = Store.where("womens_apparel = true AND annual_revenue < 1000000").each do |info|
  puts "Location: #{info.name}, Annual Revenue: #{info.annual_revenue}"
end