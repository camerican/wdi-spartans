class House
  attr_accessor :color
  attr_accessor :door, :chimney, :garage

  def initialize(chimney, door, garage)
    @chimney = chimney
    @door = door
    @garage = garage
  end
  
  # def chimney
  #   @chimney
  # end
  #
  # def door
  #   @door
  # end
  #
  # def garage
  #   @garage
  # end
end

cheap_house = House.new(false, false, false)

puts cheap_house.door
puts cheap_house.garage
puts cheap_house.chimney

cheap_house.color = "brown"

puts cheap_house.color
