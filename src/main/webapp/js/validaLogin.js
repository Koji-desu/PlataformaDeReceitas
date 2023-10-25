// type="module"
import mysql from "mysql2"

const connection = mysql.createConnection({
    host: "localhost",
    user: "sa",
    password: "sa",
    database: "jdbc:h2:~/test"
})

let validateLogin = async (username, password)=>{
    connection.connect();

    const SQL = `SELECT * FROM USUARIO WHERE EMAIL = ? AND PASSWORD = ?`;
    const result = await connection.query(SQL, [username, password]);

    return result.length > 0;
}

const form = document.querySelector("form");
form.addEventListener("submit", (e)=>{
    const username = document.querySelector("#username").value;
    const password = document.querySelector("#password").value;

    const isLoginValid = validateLogin(username, password);

    if(isLoginValid){
        window.location.href = "/"
    } else {
        alert("Usuario ou senha inválidos")
    }

    e.preventDefault();
})