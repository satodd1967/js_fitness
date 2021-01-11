document.addEventListener("DOMContentLoaded", () => {
    fetchUsers()
})

const BASE_URL = "http://127.0.0.1:3000"

function fetchUsers(){
    fetch(`${BASE_URL}/users`)
    .then(resp => resp.json())
    .then(users => {
        for (let user of users){
            let u = new User(user.id, user.email, user.username)
            u.renderUser();
        }
    })
}
