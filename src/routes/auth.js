const express = require("express")
const jwt = require("jsonwebtoken")
const bcrypt = require('bcrypt')

const connection = require("../helper/db.js")
const jwtSecret = require("../../jwtSecret.js")

const Router = express.Router()

Router.get("/", (req, res) => {
    res.send("je suis dans la route /auth")
})

Router.post("/login",(req, res) => {
    console.log("req.body", req.body)

    const sql = "SELECT id, username, password FROM users WHERE username = ?"
    const values = [
        req.body.username
    ]

    connection.query(sql, values, (err, result) => {
        if (err) throw err;

        console.log("result est", result[0].id)

        const saltRounds = 10;
        const myPlaintextPassword = req.body.password;
        const id = result[0].id;
        const username = result[0].username;

        bcrypt.compare(myPlaintextPassword, result[0].password, function(err, result) {
            if (result) {
                const tokenUserInfo = {
                    id: id,
                    username: username,
                }
                console.log("user token info est", tokenUserInfo)
                const token = jwt.sign(tokenUserInfo, jwtSecret)
                console.log("user token est", token)
    
                res.header("Access-Control-Expose-Headers", "x-access-token")
                res.set("x-access-token", token)
                return res.status(201).send("The user is connected")
            } else {
                return res.status(200).send("The password or username is wrong")
            }
        })
    })
})


module.exports = Router