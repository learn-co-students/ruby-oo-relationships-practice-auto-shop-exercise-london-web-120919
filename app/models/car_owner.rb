class CarOwner

  attr_reader :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.car_list(owner)
    Car.all.select {|car| car.owner == owner}
  end

  def self.mechanic_list(owner)
    self.car_list(owner).map {|car| car.mechanic}.uniq
  end

  def self.average_cars
    Car.all.count.to_f / CarOwner.all.count
  end

end
