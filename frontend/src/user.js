class User{
    constructor(id, email, username) {
        this.id = id;
        this.email = email;
        this.username = username;
    }

    renderUser() {
        let usersDiv = document.getElementById("users-container")

        usersDiv.innerHTML +=
        `
        <ul>
        <h3>Username: ${this.username}</h3>
        <li>Email: ${this.email}</li>
        </ul>
        `
    }
}