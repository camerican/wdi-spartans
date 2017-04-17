
# Ruby Classes

---


### What are Ruby classes
- Typically a representation of something in the real world

- Have properties and methods

- Are a convenient way to model the generic structure of something and store data about an "instance" of it


---


### Example: `User` class

```ruby
class User
  # methods and stuff go here
end
```

Example: a `User` has a first name, a last name, and a method to return their full name based on both.

All users are not the same but they share similar properties and the information we need from them all is similar.

Therefore, we create an object to "model" a user and an instance of that object to model a specific user.


---


### The `initialize` method

The **initialize** method is called every time a new instance of the object is instantiated.

Below, we are calling the `new` method on Dinosaur class.

```ruby
class Dinosaur
  def initialize
    puts "ROAR"
  end
end

# new Dinosaur instance:
deeno = Dinosaur.new()
>"ROAR"

# take a look at our new Dinosaur
puts deeno
> #<Dinosaur:0x007f8b2b485e78>
```


---


### Instances

Each instance has a unique ID that shows where it is located in the computer's memory:

```ruby
puts deeno
> #<Dinosaur:0x007f8b2b485e78>
```


---


### Instance variables

An instance of an object has its own traits, which are stored in instance variables, denoted with the @ sign.

In this example, each time a new instance is created, it is given a new random value.

```ruby
class Computer

  def initialize
    @random_num = rand
    puts @random_num
  end

end

Computer.new()
> 0.47742061498410127

Computer.new()
> 0.8619859240960505
```


---


**Exercise:** Create a class `Student` that contains an instance var `@class_name` in its `initialize` method that `puts` whenever a new instance is created.

Instantiate 3 Student instances.


---


### Let's give our class a method

```ruby
class Car

  # this will run when we create a new Car
  def initialize
    puts "Vroom!"
  end

  # instance method:
  def turn_on_engine
    puts "engine is on"
  end

end
```

Now let's instantiate a new car:

```ruby
volvo = Car.new()
# => Vroom!
```

Now let's call our new method on the instance:

```ruby
volvo.turn_on_engine()
# => Engine is on!
```


---


### Instance methods vs. Class Methods

The method we wrote above, `turn_on_engine`, is an `instance method`. We only call these kinds of methods on an **instance** of the class.

Now let's look at `class methods`, which we will call on the class itself.


---


### Example of class method


```ruby
class Car
  def initialize
    puts "Vroom!"
  end

  # this is an instance method
  # it can only be used on an instance
  def turn_on_engine
    puts "Engine is on"
  end

  # this is a class method, so it can be called
  # directly on the class, i.e. Car.traffic_jam
  def self.traffic_jam
    puts "All cars are involved"
  end
end
```


Let's create a new Car, call the instance method on the new instance, then call the class method on the Car class itself:

```ruby
volvo = Car.new()
# => Vroom!

volvo.turn_on_engine()
# => Engine is one!

Car.traffic_jam()
# => All cars are involved
```


What happens if I try to call the **class** method on an **instance**?

```ruby
volvo.traffic_jam()
# => No method error
```


---


**Exercise:** Create a class `Robot`. Give it an **instance** method `compute` and a **class** method `destroy_humanity`.

Instantiate a new instance of a Robot and call both the compute and destroy_humanity methods.


---


### Attributes

An **instance variable** (the ones with the `@` sign) can only be accessed internally inside of an object.

If we want to ask the object what the value of one of its instance variables is, we'll need to create a method to do so.

This is the basic concept behind `attributes` on Ruby classes.


---


### Writing and Reading Attributes

An attribute has two operations: write and read.

Write, also called setter methods, is used to create or change the value of the attribute.

Read, or getter methods, is used to retrieve the value of the attribute.


---


### Create an attribute

To write to an attribute, we create a setter method.

We want to isntantiate a new car and give it an engine type.

```ruby
class Car

  def set_engine(engine)
    @engine = engine
  end

end
```

Now let's create a getter method so we can retrieve the new instance method.

```ruby
class Car

  # setter:
  def set_engine(engine)
    @engine = engine
  end

  # getter:
  def read_engine()
    puts @engine
  end

end
```

Now we'll create a new car, set its engine, then retrieve it.

```ruby
volvo = Car.new()
volvo.set_engine("v8")
volvo.read_engine()
```


---


**Exercise:** Add a getter and a setter method to your class Robot from the last exercise that sets and retrieves some value.


---


### Shortcuts

Because getter and setter methods are extremely common, there are of course shortcuts for them.


---


### Shortcut for a setter method

The following pieces of code are equivalent.

```ruby
def set_name(name_value)
  @attr_name = name_value
end
```

```ruby
attr_writer :attr_name
```


---


### Shortcut for a getter method

```ruby
def get_name()
  puts @attr_name
end
```

```ruby
attr_reader :attr_name
```


---


### Shortcut for the shortcuts

Because this is ruby, of course there is an even shorter way to do it.

`attr_accessor` performs the duties of both the `attr_reader` and `attr_writer`.

The following 3 pieces of code are equivalent.

Long way:

```ruby
def set_name(name_value)
  @attr_name = name_value
end

def get_name()
  puts @attr_name
end
```


Shortcuts:

```ruby
attr_writer :attr_name
attr_reader :attr_name
```


Even shorter:

```ruby
attr_accessor :attr_name
```


---


### Let's see an example

```ruby
class Car
  attr_accessor :brand
  attr_accessor :num_wheels

  def turn_on_engine
   puts  "engine is on."
   puts "My brand is: #{@brand}."
   puts "I have #{@num_wheels} wheels."
  end

end

# create new instance
volvo = Car.new()

# give it a brand and num wheels
volvo.brand = "Toyota"
volvo.num_wheels = 4

# call the instance method
volvo.turn_on_engine()

# I can also do this:
puts volvo.brand
```


---


**Exercise:** Create a class `Animal` with two attributes and one instance method.

- Create a new instance
- Assign values for the attributes
- Call the instance method on the instance


---


### Remember the initialize method?

Let's do more with it.

Let's turn it into a **constructor**. We pass in values at the time of creation (`.new()`). Those values will be turned into instance variables, which can be accessed from any method inside the class.

```ruby
class Mammal
  def initialize(genus, color)
    @genus = genus
    @color = color
  end
end

rat = Mammal.new("Rattus", "gray")

puts rat.inspect
> #<Mammal:0x007fd845058f00 @genus="Rattus", @color="gray">
```







#
