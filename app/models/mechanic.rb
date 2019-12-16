class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

# A class variable for the mechanic class

# A class methed that returns a list of all mechanics
def self.all
  @@all
end

# A class method that returns a list of all cars that a mechanic(argument) services
def self.mechanic_specialties(mechanic)
  Car.all.select{|cars|cars.mechanic == mechanic}
end

# A class method that returns a list of all the cars owners that go to a specific mechanic(argument)
def self.mechanic_clients(mechanic)
  mechanics_cars = Car.all.select{|cars|cars.mechanic == mechanic}
  mechanics_cars.map{|cars|cars.owner} 
end

# A class method that returns a list of all the names of car owners that go to specific mechanic(argument)
def self.mechanic_clients_names(mechanic)
  m = mechanic_clients(mechanic)
  m.map{|owner|owner.name}
end


end 
