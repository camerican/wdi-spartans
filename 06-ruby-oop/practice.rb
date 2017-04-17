class Mammal
  attr_accessor :genus
  attr_accessor :color

  def initialize(genus, color)
    @genus = genus
    @color = color
  end
end


# --------


# rat = Mammal.new("Rattus", "gray")

# rat.genus
# => "Rattus"

# rat.color
# => "gray"
