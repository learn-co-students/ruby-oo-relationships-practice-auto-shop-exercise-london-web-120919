class Car

  attr_accessor :owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make:, model:, classification:, owner: nil)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map { |car| car.classification }.uniq
  end

  def mechanics
    Mechanic.all.select { |person| person.specialty.downcase == self.classification.downcase }
  end



end
