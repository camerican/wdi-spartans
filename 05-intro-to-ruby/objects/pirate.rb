# loads the ship.rb file
require "./ship"

# this is the class definition
class Pirate
  def initialize(has_eyepatch, has_parrot, name, amount_of_teasure)
    # this is similar to this.has_eyepatch
    # these are instance variables
    @has_eyepatch = has_eyepatch
    @has_parrot = has_parrot
    @name = name
    @amount_of_teasure = amount_of_teasure
  end

  # defining a method to add a pirate ship
  def add_ship(ship)
    @ship = ship
  end

  # displays the ship
  def ship
    @ship
  end

  # defines speaking behavior
  # this is a method
  def talk
    "rrrrrrrrrr"
  end

  def has_eyepatch
    "Orlando has_eyepatch = #{@has_eyepatch}"
  end

  # this is an attribute
  def has_parrot
    @has_parrot
  end

  # getter
  def name
    @name
  end

  # setter
  def name=(name)
    @name = name
  end

  def amount_of_teasure
    @amount_of_teasure
  end
end

# creates the pirate named orlando
orlando = Pirate.new(false, false, "Orlando", 1)
vinny = Pirate.new(true, true, "Vinny", 0)

puts orlando.name

orlando.name = "Marcela"

puts orlando.has_eyepatch
puts vinny.has_parrot

puts orlando.name
puts vinny.amount_of_teasure

creating a new ship and storing in the ship variable
ship = Ship.new("SS Something or Other")

adding a ship to a pirate
orlando.add_ship(ship)
puts orlando.ship.row
