class CarOwner

  attr_reader :name 

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  # make a class variable to hold all owners

  # make a class method to return the list of all car owners
  def self.all
    @@all
  end

  # A class method that returns a list of all the cars that a specific owner(argument) has
  def self.owner_cars(owner)
    Car.all.select{|cars|cars.owner == owner}
  end

  # A class method that returns a list of all the mechanics that a specific owner(argument) goes to
  def self.car_owner_mechanics(owner)
    owner_cars = self.owner_cars(owner)
    owner_cars.map{|cars|cars.mechanics}.uniq
  end

  # A class method that returns the average amount of cars owned for all owners
  def self.owner_average_car_num
    Car.all.count / CarOwner.all.count
  end


end 
