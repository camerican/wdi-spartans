/*
  Consider the code below to be the starting point for both number 1
    and number 2 of the assignment

  A farm stores animals. A farm can add animals using the addAnimal
    method. Similar to number 1 (Photo and Album).

  A mammal is also an Animal. A reptile is also an Animal.
  Mammals and reptiles inherit behavior and properties from Animal.
*/

// define Animal object
function Animal(gender, age, species) {
  this.gender = gender
  this.age = age
  this.species = species
}

// define prototype method displayAllInfo
Animal.prototype.displayAllInfo = function() {
  return this.gender + ":" + this.age + ":" + this.species
}

// define Mammal object
function Mammal(gender, age, species) {
  // invokes (calls) the Animal function constructor
  Animal.call(this, gender, age, species)

  // sets all Mammals to be warm blooded
  this.warmBlooded = true
}

// binds Mammal prototype to Animal prototype
//  lamens terms: inherits behavior from Animal
Mammal.prototype = Object.create(Animal.prototype)

// define Reptile object
function Reptile(gender, age, species) {
  Animal.call(this, gender, age, species)

  // sets all Mammals to be cold blooded
  this.warmBlooded = false
}

// binds Reptile prototype to Animal prototype
//  lamens terms: inherits behavior from Animal
Reptile.prototype = Object.create(Animal.prototype)

// define Farm object
function Farm() {
  this.animals = []
}

// define prototype method addAnimal
Farm.prototype.addAnimal = function(animal) {
  this.animals.push(animal)
}

// create the objects (define the objects)
var horse = new Animal("female", 10, "horse")
var cow = new Animal("female", 17, "cow")
var mammal = new Mammal("male", 13, "dolphin")
var reptile = new Reptile("male", 12, "gecko")

// create farm object
var farm = new Farm("red")

// using object methods
farm.addAnimal(horse)
farm.addAnimal(cow)

// console.log output of displayAllInfo
console.log(horse.displayAllInfo())

// tests to see if methods are inherited from animal
console.log(mammal.displayAllInfo())
console.log(reptile.displayAllInfo())
