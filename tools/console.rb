require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jhonny = CarOwner.new ("jhonny")
ben = CarOwner.new ("ben")
ollie = CarOwner.new("Ollie")

steve = Mechanic.new("steve", "antique")
dave =  Mechanic.new("dave", "exotic")
kev = Mechanic.new("kev", "clunker")

car1 = Car.new("ford", "mustang", "exotic", jhonny, dave)
car4 = Car.new("mitsuubishi", "lancer", "exotic", ollie, dave)
car2 = Car.new("VW", "beetle", "antique", jhonny, steve)
car5 = Car.new("toyota", "supra", "antique", ollie, steve)
car3 = Car.new("Reliant", "robin", "clunker", dave, kev)
car6 = Car.new("renault", "dauphine", "clunker", dave, kev)



binding.pry 
