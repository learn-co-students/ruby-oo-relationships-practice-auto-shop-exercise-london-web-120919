class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self 
end

def self.all #Get a list of all mechanics
  @@all
end 

#Get a list of all cars that a mechanic services
def car_list 
  Car.all.select {|car| car.mechanic == self}
end 

#Get a list of all the car owners that go to a specific mechanic
def car_owners
  car_list.map {|car| car.carowner}
end 

#Get a list of the names of all car owners who go to a specific mechanic
def car_owners_names 
  car_list.map {|car| car.carowner.name}
end 

end
