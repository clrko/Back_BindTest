const mysql = require("mysql2")

const connection = mysql.createConnection({
    host: "localhost",
    user: "admin",
    password: "*Seb230*",
    database:"ThunderDatabase"
})

connection.connect(err => {
    if (err) throw err
    console.log("connected!")
})

module.exports = connection