require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "David", last_name: "Neuman", hourly_rate: 35)

@store1.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 125)

@store1.employees.create(first_name: "Keanu", last_name: "Reeves", hourly_rate: 99)

@store1.employees.create(first_name: "Jeremy", last_name: "Piven", hourly_rate: 75)

@store2.employees.create(first_name: "Clark", last_name: "Kent", hourly_rate: 124)

@store2.employees.create(first_name: "Sidney", last_name: "Crosby", hourly_rate: 300)

@store2.employees.create(first_name: "Carl", last_name: "Icahn", hourly_rate: 250)