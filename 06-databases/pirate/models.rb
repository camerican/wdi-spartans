class Pirate < ActiveRecord::Base
  has_many :letters

  has_many :pirate_ships
  has_many :ships, through: :pirate_ships
end

class Letter < ActiveRecord::Base
  belongs_to :pirate
end

class Ship < ActiveRecord::Base
  has_many :pirate_ships
  has_many :pirates, through: :pirate_ships
end

class PirateShip < ActiveRecord::Base
  belongs_to :pirate
  belongs_to :ship
end
