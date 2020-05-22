const express = require("express")
const bcrypt = require('bcrypt')

const connection = require("../helper/db.js")

const Router = express.Router()

Router.post("/new_user", (req, res) => {

    const sql = "SELECT username FROM users WHERE username = ?"
    const values = [
        req.body.username,
    ]

    connection.query(sql, values, (err, result) => {
        if (err) throw err;
        if (result.length === 0 ) {
            const saltRounds = 10;
            const myPlaintextPassword = req.body.password;
            
            bcrypt.genSalt(saltRounds, function(err, salt) {
                bcrypt.hash(myPlaintextPassword, salt, function(err, hash) {
                    const sql = "INSERT INTO users (username, password) VALUES (?, ?)"
                    const values = [
                        req.body.username,
                        hash
                    ]
                    connection.query(sql, values, (err, result) => {
                        if (err) throw err;
                        return res.status(201).send("Registration")
                    })
                })
            })
        } else {
            return res.status(200).send("The username already exists.")
        }
    })
})

module.exports = Router