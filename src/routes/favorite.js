const express = require("express")
const jwt = require("jsonwebtoken")

const connection = require("../helper/db.js")
const jwtSecret = require("../../jwtSecret.js")

const Router = express.Router()


Router.get("/", (req, res) => {
    res.send("je suis dans la route /favorite")
})

Router.post("/tracks", (req, res) => {
    console.log("req.body", req.body) /* dans le body il faudra mettre les informations, chansons, score etc. */
    console.log("headers", req.headers)
    
    const token = req.headers['x-access-token'] /* Puré revoir le cours - les tirets ou espaces ne marchent pas donc il faut utiliser la synthaxe avec les [] et '' */
    console.log("token est", token)
    
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;
        const sql = "INSERT INTO favorite (user_id, track_id) VALUES (?, ?)"
        const values = [
            decoded.id,
            req.body.track_id,
        ]
        console.log("values are", values)
        connection.query(sql, values, (err, result) => {
            if (err) throw err;
            return res.status(200).send("Added to favorite");
        })
        
    })
    console.log("user data token", tokenData)
})

module.exports = Router