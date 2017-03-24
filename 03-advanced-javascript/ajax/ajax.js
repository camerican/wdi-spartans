// look for sharknado in omdb api
// this is the equivalent of a url that looks like
//  the following -> http://www.omdbapi.com/?t=sharknado
$.ajax({
  // this is the url being
  url: "http://www.omdbapi.com/",
  // the method being used (POST / GET / PUT / DELETE)
  method: "GET",
  // this represents the data being sent to server
  data: {
    // this would set the query string parameter 't'
    //  to the value 'sharknado'
    t: "inception"
  },
  success: function(response) {
    var actors = response.Actors
    var paragraphElement = document.querySelector("p")

    paragraphElement.innerHTML = "<strong>The actors are:</strong><h1>" + actors + "</h1>"
  }
});
