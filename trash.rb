class Mechanic

    attr_reader :name, :specialty
  
    @@all = []
  
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end
  def self.all
    @@all
  end
  end


  #########################

  class Car

    attr_reader :make, :model, :classification, :owner, :mechanic
  
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


  ##################

  class CarOwner

    attr_reader :name
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
      @carsOwned = []
    end
    def self.all #find all car owners
      @@all
    end
    def newCar(make, model, classification)
      @carsOwned << Car.new(make, model, classification)
    end
    def myCars
      @carsOwned
    end
    
  
  
  end
  
  

  
