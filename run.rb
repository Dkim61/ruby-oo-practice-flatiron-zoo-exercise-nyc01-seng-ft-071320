require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronx_zoo = Zoo.new("bronx zoo", "bronx zoo")
central_park_zoo = Zoo.new("central park zoo", "nyc")
another_zoo = Zoo.new("another zoo", "somewhere")
national_zoo = Zoo.new("national zoo", "national")

bill = Animal.new("tiger", 1213, "tiger", national_zoo)
charlie = Animal.new("charlie", 200, "cat", central_park_zoo)
shadow = Animal.new("shadow", 200, "dog", another_zoo)
joe = Animal.new("joe", 200, "bear", bronx_zoo)

binding.pry
puts "done"