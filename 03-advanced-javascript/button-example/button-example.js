// define html elements
var buttonElement = document.querySelector("button")
var paragraphElement = document.querySelector("p")
var anchorElement = document.querySelector("a")

// add button event listener
buttonElement.addEventListener("click", function(event){
  // change html of paragraph element
  paragraphElement.innerHTML = "Banana"

  // change href of anchor element
  anchorElement.setAttribute("href", "http://google.com")

  // change inner html of anchor
  anchorElement.innerHTML = "Go to Google"

  // the following is css code:
  /*
    a {
      background-color: blue
    }
  */

  // is the same as the following js code
  anchorElement.style.backgroundColor = "blue"
})
