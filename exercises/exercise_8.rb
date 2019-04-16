require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

emily = @store1.employees.create(first_name: "Emily", last_name: "Blunt", hourly_rate: 188)
puts "Emily's password is #{emily.password} (this should be a secret...)"
