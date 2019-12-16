class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all.push(self)
  end

def self.all
@@all
end

def self.car_classification
  self.all.map{|car| car.classification}.uniq
end

def self.list_mechanics(classification)
  Mechanic.all.select { |mech|mech.specialty == classification }
end

end
