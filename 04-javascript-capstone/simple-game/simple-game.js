// runs when the user choose the wrong answer
function alertFail() {
  alert("This is not the right answer")
}

// runs when the user chooses the right answer
function alertSuccess() {
  alert("This is the right answer")

  // fire confetti cannon
}

// this chooses a random number between 1 and 3
function randomizer() {
  return Math.floor((Math.random() * 3) + 1)
}

// makes sure code will only run when entire document is loaded
document.addEventListener("DOMContentLoaded", function(){
  // this will run when document is loaded
  var firstChoice = document.querySelector("#choice-1")
  var secondChoice = document.querySelector("#choice-2")
  var thirdChoice = document.querySelector("#choice-3")

  // chooses a random number and stores it in answer
  var answer = randomizer()

  // sets up behavior clicking on first button
  firstChoice.addEventListener("click", function(event){
    if(answer == 1) {
      // invokes alertSuccess function
      alertSuccess()
    } else {
      // invokes alertFail function
      alertFail()
    }
  })

  // sets up behavior clicking on second button
  secondChoice.addEventListener("click", function(event){
    if(answer == 2) {
      alertSuccess()
    } else {
      alertFail()
    }
  })

  // sets up behavior clicking on third button
  thirdChoice.addEventListener("click", function(event){
    if(answer == 3) {
      alertSuccess()
    } else {
      alertFail()
    }
  })
})

// this may not run when document is loaded
// you may run into a race condition where html elements are not fully
//  loaded yet
