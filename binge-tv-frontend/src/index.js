document.addEventListener("DOMContentLoaded", function() {
    fetchShows()
})

function fetchShows() {
    let shows = document.getElementById("shows")
    let li = document.createElement("li")
  fetch(`http://10.0.0.99:3000/api/v1/shows`) 
  .then((res) => res.json())
  .then(results => {
     results.data.forEach(show => listShow(show)
        
     )
  })
}

function listShow(show) {
  let div = document.getElementById("shows")
  let newLi = document.createElement("li")
  newLi.innerText = show.attributes.name
  console.log(show)
  div.appendChild(newLi)
  
}