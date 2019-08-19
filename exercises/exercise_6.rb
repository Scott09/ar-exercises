require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(:id => 1)
@store2 = Store.find_by(:id => 2)
@store3 = Store.find_by(:id => 3)

puts @store1.inspect
puts @store2.inspect
puts @store3.inspect

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Ralph", last_name: "Lee", hourly_rate: 100)

@store1.employees.create(first_name: "Sean", last_name: "Hongshen", hourly_rate: 90)

@store2.employees.create(first_name: "Scott", last_name: "Appleton", hourly_rate: 60)

@store2.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 60)

@store2.employees.create(first_name: "Steve", last_name: "Spencer", hourly_rate: 75)

@store3.employees.create(first_name: "Kevin", last_name: "Vefije", hourly_rate: 60)

@store3.employees.create(first_name: "Bob", last_name: "Qool", hourly_rate: 60)

@store3.employees.create(first_name: "Bob", last_name: "Loblaw Lawblog", hourly_rate: 75)
