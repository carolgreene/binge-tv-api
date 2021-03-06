document.addEventListener("DOMContentLoaded", function() {
  fetchShows()
  fetchUsers()  
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
  let showsDiv = document.getElementById("shows")
  let newLi = document.createElement("li")
  newLi.innerText = show.attributes.name   /*`${show.attributes.name}-${show.attributes.genre}`*/
  console.log(show)
  showsDiv.appendChild(newLi)
  
}

function fetchUsers() {
  let users = document.getElementById("users")
  let li = document.createElement("li")
  fetch(`http://10.0.0.99:3000/api/v1/users`) 
  .then((res) => res.json())
  .then(results => {
    results.data.forEach(user => listUsers(user)      
    )
  })
}

function listUsers(user) {
  let usersDiv = document.getElementById("users")
  let newLi = document.createElement("li")
  newLi.innerText = user.attributes.email
  usersDiv.appendChild(newLi)
}
