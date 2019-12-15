class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all #find all car owners
    @@all
  end
  def newCar(make, model, classification)
    newCar = Car.new(make, model, classification)
    newCar.owner = self
  end
  def myCars
    Car.all.select{|cars|cars.owner == self}
  end
  def myMechanic
    myCars.map{|cars| cars.mechanic}
  end
  def self.averageCars
      cars = @@all.map{|owners| owners.myCars.count}
      cars.reduce(:+).to_f / @@all.length
  end
end
