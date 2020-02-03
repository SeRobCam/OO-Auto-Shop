class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def list_of_cars_of_owner
    Car.all.select { |car| car.car_owner == self }
  end

  def list_of_mechanics_of_owner
    list_of_cars_of_owner.map { |car| car.mechanic }
  end

  def self.average
    total_owner = self.all.count 
    total_cars = Car.all.count 
    average = total_owner.to_f / total_cars.to_f 
    average
    #binding.pry
  end

end
