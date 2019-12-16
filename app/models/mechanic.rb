class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all.push(self)
end

def self.all
@@all
end

def list_cars
  Car.all.select {|car| car.mechanic == self}
end

def list_owners
  Car.all.select{|car| car.mechanic == self}.map{|car| car.owner}.uniq
end

def list_owners_name
  list_owners.map {|owner| owner.name}
end
end
