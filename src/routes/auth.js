const express = require("express")
const jwt = require("jsonwebtoken")

const connection = require("../helper/db.js")
const jwtSecret = require("../../jwtSecret.js")

const Router = express.Router()

Router.get("/", (req, res) => {
    res.send("je suis dans la route /auth")
})

Router.post("/login",(req, res) => {
    console.log("req.body", req.body)

    const sql = "SELECT username, password FROM users WHERE username = ? AND password = ?"
    const values = [
        req.body.username,
        req.body.password
    ]

    connection.query(sql, values, (err, result) => {
        if (err) throw err;
        if (result == false) {
            return res.status(200).send("The password or username is wrong"); /* mettre à jour le status */
        } else {
            const tokenUserInfo = {
                username: req.body.username, 
                status: "connected" /* A recuperer de la base de donnée */
            }
            const token = jwt.sign(tokenUserInfo, jwtSecret)
            res.header("Access-Control-Expose-Headers", "x-access-token")
            res.set("x-access-token", token)
    
            return res.status(200).send("user is connected")
        }
    })
})

module.exports = Router