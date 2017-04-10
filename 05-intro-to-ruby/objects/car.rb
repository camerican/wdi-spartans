class Car
  # this is the same as writing
  #   attr_reader :color
  #   attr_writer :color
  attr_accessor :color

  # this is the same as writing attr_reader :color
  # def color
  #   @color
  # end
  #
  # this is the same as writing attr_writer :color
  # def color=(color)
  #   @color = color
  # end

  # instance method
  def start_engine
    "starting engine now"
  end

  # class method
  def self.traffic_jam
    "all cars are jammed"
  end
end

# creating a copy or instance of a Car class
toyota = Car.new

# this invokes an instance method
# puts toyota.start_engine

# this invokes a class method
# puts Car.traffic_jam

# sets the toyota color to red
toyota.color = "red"

# retrieves the color from toyota
puts toyota.color
