
# Ruby inheritance

---


### Intro

In Ruby, one class can inherit from another class, taking all of its methods and attributes with it.

Inheritance is indicated at class definition, using the `<` operator.

```ruby
class Animal
end

class Dog < Animal
end
```

We would say the above out loud like this: "class Dog extends Animal".


---


```ruby
class Animal
  attr_accessor :legs
end

class Dog < Animal
  def woof
    puts "WOOF"
  end
end

my_dog = Dog.new()

my_dog.legs = 4

my_dog.woof
> "WOOF"
```


---


**Exercise:**

In addition to `Dog` class, create two more animals that extend `Animal` class.

Create unique methods on each class depending on the type of animal. For instance, a lion can roar and an eagle can fly.

Create an instance of each class and call the methods.
















#
