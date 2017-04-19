class Pirate < ActiveRecord::Base
  has_many :letters
end

class Letter < ActiveRecord::Base
  belongs_to :pirate
end
