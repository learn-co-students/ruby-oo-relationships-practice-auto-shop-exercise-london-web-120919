class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #Get a list of all the cars that a specific owner has
  def list_of_cars
    Car.all.select {|car| car.carowner == self}
  end 
  
  #Get a list of all the mechanics that a specific owner goes to
  def list_of_mechanics
    list_of_cars.map{|car| car.mechanic}
  end
  
  #cars = Cars.all.select {|car| car.owner == self}
  #mechanics = cars.map {|car| car.mechanic}

  #Get the average amount of cars owned for all owners
  def self.average_cars_owned
    Car.all.count.to_f / CarOwner.all.count
 end 

end
