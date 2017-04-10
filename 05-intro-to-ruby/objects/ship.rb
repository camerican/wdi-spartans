# define ship class
class Ship
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def row
    "Rowwing the ship"
  end

  def display_name_and_row
    puts name

    row
  end
end

pirate_ship = Ship.new("The Winsome Lass")
puts pirate_ship.name
puts pirate_ship.row
puts pirate_ship.display_name_and_row
