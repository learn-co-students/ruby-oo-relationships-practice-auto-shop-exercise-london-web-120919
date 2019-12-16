require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

carowner1 = CarOwner.new("Bob")
carowner2 = CarOwner.new("James")
carowner3 = CarOwner.new("Ben")

mechanic1 = Mechanic.new("Mike", "antique")
mechanic2 = Mechanic.new("Si", "exotic")
mechanic3 = Mechanic.new("Dave", "clunker")

car1 = Car.new("make1", "old", "antique", carowner1, mechanic1)
car2 = Car.new("make2", "new", "exotic", carowner2, mechanic2)
car3 = Car.new("make3", "new", "clunker", carowner1, mechanic1)
car4 = Car.new("make4", "old", "antique", carowner1, mechanic1)
car5 = Car.new("make4", "new", "clunker", carowner3, mechanic3)

binding.pry
