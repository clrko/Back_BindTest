const mysql = require("mysql2")
const dbCredentials = process.env.CLEARDB_DATABASE_URL || require("./dbCredentials.js")

const connection = mysql.createPool(dbCredentials)

module.exports = connection 