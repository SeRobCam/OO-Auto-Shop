class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic

    @@all << self
  end

  def self.all
    @@all
  end

  def self.cars_classifications
    self.all.map { |car| car.classification }
    #binding.pry
  end

  def expertise
   Mechanic.all.select { |mech| mech.specialty == self.classification}
      
  end


end
