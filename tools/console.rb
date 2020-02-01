require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


owner1=CarOwner.new("Michael")
owner2=CarOwner.new("John")
owner3=CarOwner.new("Peter")

m1=Mechanic.new("Mechanic1", "Antique")
m2=Mechanic.new("Mechanic2", "Exotic")
m3=Mechanic.new("Mechanic3", "Clunker")

c1=Car.new("Mustang","R1", "Antique", owner1, m1)
c2=Car.new("Camaro","R2", "Exotic", owner2, m1)
c3=Car.new("Ford","R3", "Clunker", owner3, m2)
c4=Car.new("Porsche","Speeder", "Exotic", owner3, m2)
c5=Car.new("Lamborgini","Diablo", "Antique", owner2, m3)

binding.pry
