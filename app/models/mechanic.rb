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
  def carsIFix
    Car.all.select{|cars|cars.mechanic == self}
  end
  def myClients
    carsIFix.map{|cars|cars.owner} 
  end
  def myClientsName
    myClients.map{|clients| clients.name}
  end
end
