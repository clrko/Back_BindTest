const mysql = require("mysql2")
const dbCredentials = process.env.CLEARDB_DATABASE_URL || require("./dbCredentials.js")

const connection = mysql.createConnection(dbCredentials)

connection.connect(err => {
    if (err) throw err
})

module.exports = connection 