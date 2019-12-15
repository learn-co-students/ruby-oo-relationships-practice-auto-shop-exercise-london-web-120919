require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

toli = CarOwner.new("Toli")
tim = CarOwner.new("Tim")
mabel = CarOwner.new("Mabel")
# fern  = CarOwner.new("Fern")

puts "CarOwner.all"
puts CarOwner.all

bob = Mechanic.new(name: "Bob", specialty: "sport")
dave = Mechanic.new(name: "Dave", specialty: "Vintage")
john = Mechanic.new(name: "John", specialty: "Family")
fran = Mechanic.new(name: "Fran", specialty: "Van")

puts "Mechanic.all"
puts Mechanic.all

transit = Car.new(make: "Ford", model: "Transit", classification: "Van")
transit.owner = toli

aclass = Car.new(make: "Mercedes", model: "A-class", classification: "sport", owner: tim)
beetle = Car.new(make: "Volkswagen", model: "Beetle", classification: "vintage", owner: tim)
mini = Car.new(make: "Mini", model: "original", classification: "vintage", owner: tim)
picasso = Car.new(make: "renaut", model: "picasso", classification: "family", owner: mabel)
a5 = Car.new(make: "Audi", model: "A5", classification: "sport", owner: toli)


puts "all cars"
puts Car.all

puts "Tim's mechanics"
puts tim.my_mechanics

puts "bob's cars"
puts bob.my_cars

puts "bob's owners"
puts bob.car_owners

puts "bob's owners' names"
puts bob.car_owners_by_name

puts "all car classifications"
puts Car.classifications

puts "mini mechanics"
puts mini.mechanics

puts "a5 mechanics"
puts a5.mechanics



binding.pry
