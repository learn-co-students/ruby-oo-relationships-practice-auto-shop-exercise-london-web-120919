class CarOwner

  attr_reader :name
  attr_accessor :make, :model, :classification

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # def new_car(make, model, classification)
  #   Car.new(@make, @model, @classification, @owner = self)
  # end

  def all_cars
    Car.all.select { |car| car.owner == self }
  end

  def my_mechanics
    car_classifications = self.all_cars.map { |car| car.classification }.uniq
    mechanics = car_classifications.map do |classification| 
      Mechanic.all.find { |person| person.specialty == classification }
    end
    mechanics
  end

  def self.average_cars_per_owner
    no_cars = Car.all.count.to_f
    no_owners = self.all.count.to_f
    no_cars / no_owners
  end

end
