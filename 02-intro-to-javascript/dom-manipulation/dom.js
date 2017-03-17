// get object reference to second paragraph
var secondParagraph = document.getElementById("second")

// get object reference to text field using querySelector syntax
//  its very similar to css style
//  #[id], .[class], [html tag]
var textField = document.querySelector("#text-field")

// get all paragraphs and store them within an array
var allParagraphs = document.getElementsByTagName("p")

// loop thru every paragraph and change the inner html of
//  p tag to an anchor
for(var i = 0; i < allParagraphs.length; i++) {
  allParagraphs[i].innerHTML =  "<a href='http://google.com'>Google</a>"
}

// change the second paragraph inner html to a strong tag
secondParagraph.innerHTML = "<strong>Second Paragraph</strong>"

// shows you the object (and all its properties) in the console
console.log(allParagraphs)

// change the text field value
textField.value = "orlando"

// change second paragraph color to red
secondParagraph.style.color = "red"

// change the second paragraph border to 1px solid black
secondParagraph.style.border = "1px solid black"
