document.addEventListener("DOMContentLoaded", function() {
    listShows()
})

function listShows() {
  fetch(`http://10.0.0.99:3000/api/v1/shows`) 
  .then((res) => res.json())
  .then(results => {
     results.data.forEach(show => {
        console.log(show)
     })
  })
}