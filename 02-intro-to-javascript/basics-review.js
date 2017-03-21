var number = 0

// use conditionals whenever making a choice
//  based on a variable you've defined
if(number >= 2) {
  console.log("is greater than or equal to 2")
} else {
  console.log("is not greater than or equal to 2")
}

// defining the function
function nameJammer(name) {
  return name + " jammer"
}

// defining the function
function numberJammer(name) {
  return number + " " + name
}

// invoke it
var jammedName = nameJammer("orlando")

// use the output of nameJammer
//  and pass it as the input to numberJammer
numberJammer(jammedName)
