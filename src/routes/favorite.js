const express = require("express")
const jwt = require("jsonwebtoken")

const connection = require("../helper/db.js")
const jwtSecret = require("../../jwtSecret.js")

const Router = express.Router()


Router.get("/", (req, res) => {

    console.log("req headers est ", req.headers['x-access-token'])

    const token = req.headers['x-access-token']
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;

        const sql = "SELECT (track_id) FROM favorite WHERE user_id = ?"
        const values = [decoded.id]
        console.log("values are", values)
        connection.query(sql, values, (err, result) => {
            if (err) throw err;
            console.log("the result is", result)
            return res.status(200).send(result);
        })
        
    })
})

Router.post("/tracks", (req, res) => {
    console.log("req.body", req.body) 
    console.log("headers", req.headers)
    
    const token = req.headers['x-access-token'] 
    console.log("token est", token)
    
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;

        const sql = "SELECT (track_id) FROM users WHERE user_id = ?"
        const values = [
            req.body.username,
        ]
        connection.query(sql, values, (err, result) => {
            if (err) throw err;

            if (result.length === 0 ) {
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
            } else {
                const sql = "DELETE FROM favorite WHERE id = ? AND track_id = ?"
                const values = [
                    decoded.id,
                    req.body.track_id,
                ]
                console.log("values are", values)
                connection.query(sql, values, (err, result) => {
                    if (err) throw err;
                    return res.status(200).send("Removed favorite")
                })
            }
        })
    })
    console.log("user data token", tokenData)
})

module.exports = Router