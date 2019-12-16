class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def  car_owner(owner)
    self.owner = owner
  end

  # class variable to hold all cars

  # class method to access the list of all cars
  def self.all
    @@all
  end

  # A class method that returns the list of all car classifications
  def self.classifications
    Car.all.map{|cars|cars.classification}.uniq
  end

  # A class method that gets a list of all mechanics that have an expertise that
  # matches the given car's specification (argument)
  def self.mechanics_match_by_expertise(car_specification)
    Mechanic.all.select{|mechanics|mechanics.specialty == car_specification}
  end

end 
