# JavaScript

## Notes
- JavaScript was built in 10 days
- Created by Brendan Eich (Netscape / Mozilla)
- Definitely not the most respected programming language
- Lots of trip-ups
- JS has evolved a LOT - has super cool features now
- Has a lot of flexibility -- multi-paradigm

### TEST YOUR CODE
- Proper syntax is key
- use `typeof()` and `console.log()` to test / debug your program


## Primitives

Most basic form of JS data.

Primitives | String | Number | Boolean | null | undefined
--- | --- | --- | --- | --- | ---
**Meaning** | plain text with single or double quotes | numerical value | logic, used for testing conditions | reference to something that exists, but has no value | no reference, therefore -- doesn't exist / no value
**Examples** | `"wdi-spartans"`, `'Hello, world!'` | `100`, `2.5` |  `true`, `false` | `null` | `undefined`



#### Exercise

```js
console.log(typeof(5))
// number
console.log(typeof(5.0))
// number
console.log(typeof('five'))
// string
console.log(typeof('boolean'))
// string
console.log(typeof(true))
// boolean
console.log(typeof('true'))
// string
console.log(typeof(false))
// boolean
console.log(typeof('false'))
// string
console.log(typeof('null'))
// string
console.log(typeof(null))
// object -- JS quirk!
console.log(typeof(undefined))
// undefined
console.log(typeof(five))
// undefined
console.log(typeof(NaN))
// number
```


## Logic / Control Flow

### Comparison Operators

Used to check the values and the type of value (primitives)

assignment | comparison | inequality | strict comparison | strict inequality
--- | --- | --- | --- | ---
`=` | `==` | `!==` | `===` | `!===`

Get in the habit of using `===` and `!==`


### Math Operator Shortcuts

We're gonna add and subtract a lot

#### Exercise

```js
var diez = 10
console.log(diez ++)
console.log(diez += 11)
console.log(diez -= 89)
console.log(diez --)
console.log(diez += 70)
// now what is diez ??
```

# Operators / Conditionals

## Arithmetic Operators
- `+` addition
- `-` subtraction
- `*` multiplication
- `/` division
- `%` remainder/modulus
- `**` exponent

## Comparison Operators
- `==`, `===` equal / strict equal (type checking)
- `!=`, `!==` not equal / strictly not equal (type checking)
- `>` greater than
- `<` less than
- `>=` greater than or equal
- `<=` less than or equal

[MDN Equality comparisons and sameness](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Equality_comparisons_and_sameness)

## Logical Operators
- `&&` and (both are true)
- `||` or (at least one is true)
- `!` not

**AND**
```js
true && true
// true

true && false
// false

false && false
// false
```

**OR**
```js
true || true
// true

true || false
// true

false || false
// false
```

**NOT**
```js
!false || !false
// true
```

## Conditional statements
- `else if` and `else` are optional
- as many `else if` statements as you want
- 1 `else` statement

### Example Structure

```js
if (...) { // line 1
    // execute this code if the code inside the parentheses on line 1 evaluates to true

} else if (...) { // line 4
    // execute this code if
    // line 1 evaluated to false, but the code on line 4 evaluates to true

    if (...) { // line 8
        // nested if statement
        // execute this code if
        // line 1 is false, line 4 is true, and line 8 is true

    } else {
        // execute this code if
        // line 1 is false, line 4 is true, and line 8 is false

    };

    // more code can be executed here

} else if (...) { // line 21
    // execute this code if
    // lines 1 and 4 are false, but line 21 is true

} else {
    // no parentheses necessary
    // execute this code if
    // lines 1, 4, and 21 are all false

};
```
