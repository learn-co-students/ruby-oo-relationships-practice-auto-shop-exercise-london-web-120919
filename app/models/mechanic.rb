class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name:, specialty:)
    @name = name.downcase
    @specialty = specialty.downcase
    @@all << self
  end

  def self.all
    @@all
  end

  def my_cars
    Car.all.select { |car| car.classification.downcase == self.specialty.downcase }
  end

  def car_owners
    self.my_cars.map { |car| car.owner }.uniq
  end

  def car_owners_by_name
    self.car_owners.map { |owner| owner.name }
  end

end
