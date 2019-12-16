require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end
jhonny = CarOwner.new('Jhonny')
ben = CarOwner.new('Ben')
oli = CarOwner.new('Oli')

dave = Mechanic.new('Dave', 'Exotic')
steve = Mechanic.new('Steve', 'Antique')
kev = Mechanic.new('Kev', 'Clunker')

car1 =Car.new('Ford', 'Mustang', 'Exotic', jhonny, dave)
car2 =Car.new('Reliant', 'Robin', 'Clunker', ben, kev)
car3 =Car.new('VW', 'Beetle', 'Antique', ben, steve)
car4 =Car.new('Mitsubishi', 'Lancer', 'Antique', oli, steve)
car5 =Car.new('Skoda', 'Favorit', 'Exotic', oli, dave)
car6 =Car.new('Fiat', 'Panda', 'Antique', oli, steve)


binding.pry
