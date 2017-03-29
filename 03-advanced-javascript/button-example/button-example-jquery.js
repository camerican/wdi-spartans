$(document).ready(function(){
  // $("button").on("click", function(){
  //   console.log("click")
  // })

  // moves the button to the right
  //  then when its done it moves it down
  $("button").animate({
    left: "400px"
  }, 2000, function(){
    $("button").animate({
      top: "100px"
    })
  })
})

// the following is equivalent to the document ready
//  style in jQuery
// runs when document is loaded
// document.addEventListener('DOMContentLoaded', function(){
//   // all your code goes here
// })
