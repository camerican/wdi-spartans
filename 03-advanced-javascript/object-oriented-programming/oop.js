// grab html elements from dom
var galleryDiv = document.querySelector("#gallery")
var newImageButton = document.querySelector("a")

// define objects
function Image(source, caption) {
  this.source = source
  this.caption = caption
}

Image.prototype.generateHtmlId = function () {
  return this.source.replace(/(.jpg|.png)/, "")
};

// sets up the behavior that when you click on the new image button
//  it will add the image to the gallery
newImageButton.addEventListener("click", function(event){
  event.preventDefault()

  // grab fields from html dom
  var sourceField = document.querySelector("#source")
  var captionField = document.querySelector("#caption")

  // creating a new Image object
  var newImage = new Image(sourceField.value, captionField.value)

  // create html element
  var imageElement = document.createElement("img")
  var spanElement = document.createElement("span")

  // set attributes of new image being created
  imageElement.id = newImage.generateHtmlId()
  imageElement.src = newImage.source

  // set attributes of new span being created
  spanElement.innerHTML = newImage.caption

  // adds image to gallery div
  galleryDiv.appendChild(imageElement)

  // adds span to gallery div
  galleryDiv.appendChild(spanElement)
})
