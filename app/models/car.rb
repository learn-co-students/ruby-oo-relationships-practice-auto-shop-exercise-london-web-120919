class Car

  attr_reader :make, :model, :classification, :carowner, :mechanic

  @@all = []

  def initialize(make, model, classification, carowner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @carowner = carowner
    @mechanic = mechanic
    @@all << self 
  end

  def self.all #Get a list of all cars
    @@all
  end 
  
  #Get a list of mechanics that have an expertise that matches the car classification
  def mechanics
    #car.classification == mechanic.specialty
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end 

end
