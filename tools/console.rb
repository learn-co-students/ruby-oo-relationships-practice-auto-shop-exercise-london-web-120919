require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

carlos = CarOwner.new("Carlos")
carlos2 = CarOwner.new("Carlos2")
# carlos3 = CarOwner.new("Carlos3")
joe = Mechanic.new("Joe","clunker")

jeepW = Car.new("Jeep","Willys","clunker")
fuscaW = Car.new("Wolks","Fusca","classic")
rols = Car.new("makeR","modelR","classic")

fuscaW.owner = carlos2
rols.owner = carlos2

jeepW.owner = carlos
jeepW.mechanic = joe



binding.pry
0