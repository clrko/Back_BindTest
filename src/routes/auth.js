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

    const sql = "SELECT id, username, password FROM users WHERE username = ?"
    const values = [
        req.body.username
    ]

    connection.query(sql, values, (err, result) => {
        if (err) throw err;
        if (!result) {
            return res.status(200).send("The password or username is wrong"); /* TODO explorer les status pour prendre celui qui correspond sont bons */
        } else {
           /*  bcrypt.compare(req.body.password, result[]de la DB, function(err, result) {
                // result == true
            });

            if  */

            console.log(result)
            const tokenUserInfo = {
                id: result[0].id,
                username: result[0].username,
            }
            console.log("user token info est", tokenUserInfo)
            const token = jwt.sign(tokenUserInfo, jwtSecret)
            console.log("user token est", token)

            res.header("Access-Control-Expose-Headers", "x-access-token")
            res.set("x-access-token", token)
            return res.status(200).send("user is connected")
        }
    })
})

Router.post("/test",(req, res) => {
    console.log("req.body", req.body) /* dans le body il faudra mettre les informations, chansons, score etc. */
    console.log("headers", req.headers)
    const token = req.headers['x-access-token'] /* Puré revoir le cours - les tirets ou espaces ne marchent pas donc il faut utiliser la synthaxe avec les [] et '' */
    console.log("token est", token)
    const tokenData = jwt.verify(token, jwtSecret)
    console.log("user data token", tokenData)
    /* Gérer quand c'est pas bon */
    /* mtn on peut utiliser lid pour sauvegarder */
})

module.exports = Router