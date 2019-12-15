class Car

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic
  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end
  def self.allClassification #should I make it so it doesn't show me repetitive ones?
    @@all.map{|car|car.classification}
  end
  def findMechanic
    Mechanic.all.select{|mechanics|mechanics.specialty == self.classification}
  end
  


end
