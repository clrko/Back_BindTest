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
            return res.status(200).send("The password or username is wrong"); /* explorer les status pour prendre celui qui correspond sont bons */
        } else {
            const tokenUserInfo = {
                username: req.body.username, /* a recuperer de la base de donnée */
                status: "chicken lord" /* a recuperer de la base de donnée */
            }
            const token = jwt.sign(tokenUserInfo, jwtSecret)
            res.header("Access-Control-Expose-Headers", "x-access-token")
            res.set("x-access-token", token)
    
            return res.status(200).send("user is connected")
        }
    })
})

module.exports = Router