# Data Structures

## Variables

A variable is just a container that stores data.

You can store strings, numbers, booleans, arrays, objects, functions, anything really...

Once you store data in a variable, you can use the variable name as a **reference** to the data that you stored in it. How convenient!

Just like as the name suggests, variables can change.

```js
var name = "isaac"; // you have to use the keyword var to declare a variable
// name is a variable with string value "isaac"

console.log(name);
// isaac

name = "orlando";
// name is now string "orlando"

name = 4;
// name is now number 4

name = {
    first: "orlando",
    last: "caraballo"
};
// name is now an object,
// with 2 keys, first and last,
// which have string values "orlando" and "caraballo", respectively
```

## Arrays [ ]

An array is another type of container that stores data.

An array is a ordered list.

Arrays are sorted by **index**.

Index is always a number.

Index starts at 0.

You can access and change an array's values using index.

```js
var emptyArray = [];
// create an empty array and store it in the variable emptyArray

var myArray = ["zero", "one", "two", "three"]
// create an array and store it in the variable myArray

console.log(myArray[0]) // the 0 index of myArray is:
// zero

console.log(myArray[3]); // the 3 index of myArray is:
// three

myArray[3] = 1000 // single equal sign is used for assignment
// the 3 index of myArray is now number 1000

console.log(myArray);
// ["zero", "one", "two", 1000]

console.log(myArray.length); // Array.length is a built-in method which returns the greatest index in the array + 1
// 4

console.log(myArray[myArray.length - 1]); //myArray.length returns the value 4, so this essentially means: console.log(myArray[3])
// 1000
```


#### Trippy Array Exercise

```js
var index = 2
var myArray = [1, "two", 3.4]
// variables are written using camelCase
// thisIsCamelCase
// look at those humps

console.log(myArray[1]);
// "two"
console.log(myArray[2]);
// 3.4
console.log(myArray[0]);
// 1
console.log(myArray[3]);
// undefined
console.log(myArray[4]);
// undefined

var four = undefined

myArray.push(four);
console.log(myArray);
// [1, "two", 3.4, undefined]

var four = "four";
myArray.push(four);
console.log(myArray);
// [1, "two", 3.4, undefined, "four"]


console.log(myArray[4]);
// "four"
console.log(myArray);
// [1, "two", 3.4, undefined, "four"]


console.log(myArray[3]);
// undefined (the primitive)
console.log(myArray[three]);
// three is not defined
console.log(myArray);
// [1, "two", 3.4, undefined, "four"]


var three = index;

console.log(myArray[three]);
// 3.4

three = 1

console.log(myArray[index]);
// 3.4

console.log(myArray[three]);
// two

console.log(myArray);
// [1, "two", 3.4, undefined, "four"]

console.log(myArray[four]);
// undefined

myArray[0] = "spartans"
console.log(myArray);
// ["spartans", "two", 3.4, undefined, "four"]

console.log(myArray["0"]);
// spartans

console.log(myArray["index"]);
// undefined

```


## Objects { }

Objects are another type of container that stores data.

Objects are kind of like arrays, except they are sorted by **keys**, not indices.

Keys are variables.

Each key has a value.

Value is the data that is stored in a key.

key: value

The key is a reference to its value.

Access the value by calling the key.

Keys are also called **properties**

### Dot notation

```js
var lando = {
    firstName: "orlando",
    lastName: "caraballo"
};
// lando is an object
// lando the object has keys: firstName and lastName,
// which have string values: "orlando" and "caraballo", respectively

console.log(lando.firstName);
// orlando

console.log(lando.lastName);
// caraballo
```

### Bracket notation
```js
var lando = {
    firstName: "orlando",
    lastName: "caraballo"
}

console.log(lando["firstName"]); // string surrounded by square brackets
// orlando
```

#### Assignment
```js

var lando = {
    firstName: "orlando",
    lastName: "caraballo"
};

lando.cohort = "wdi"
lando["ta"] = "isaac"

console.log(lando);
// {
//     firstName: "orlando",
//     lastName: "caraballo",
//     cohort: "wdi",
//     ta: "isaac"
// }


var group = "spartans";
// declare group with string value "spartans"
// remember: variables can be referenced somewhere else

lando.cohort = group;

console.log(lando);
// {
//     firstName: "orlando",
//     lastName: "caraballo",
//     cohort: "spartans",
//     ta: "isaac"
// }
```
...what just happened?

### JS assigns by reference

When we wrote `lando.cohort = group`, we changed the value of cohort (which is a key in the lando object). we assigned it the value of group. group is a variable -- it's a reference to a value, the string "spartans".

# Bonus

## Objects are mutable
```js
var person = {
    first: "isaac",
    last: "kang",
    age: 50
}

var x = person
// x is not a copy of person
// x IS person

x.age = 10

console.log(x.age);
// 10

console.log(person.age)
// 10
```

...**wtf**?
