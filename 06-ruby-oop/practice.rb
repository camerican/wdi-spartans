class Animal
  attr_accessor :legs
end

class Dog < Animal
  def woof
    puts "WOOF"
  end
end

### Try these in IRB/Pry!
# $ irb
# $ load 'practice.rb'

# my_dog = Dog.new

# my_dog.legs = 4

# my_dob.legs
# => 4

# my_dog.woof
# => "WOOF"
