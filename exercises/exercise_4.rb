require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
# require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

@store4 = Store.create({ :name => "Surrey", :annual_revenue => 224000, :mens_apparel => false, womens_apparel: true})

@store5 = Store.create( {:name => "Whistler", :annual_revenue => 1900000, :mens_apparel => true, :womens_apparel => false} )

@store6 = Store.create( {:name => "Yaletown", :annual_revenue => 430000, :mens_apparel => true, :womens_apparel => true} )

@storesformen = Store.where(mens_apparel: true)

@storesformen.all.each do |record| 
  puts record.name
  puts record.annual_revenue
end

@storesforwomen = Store.where(womens_apparel: true, annual_revenue: 0..1000000)

@storesforwomen.all.each do |record|
  puts record.name
  puts record.annual_revenue
end

