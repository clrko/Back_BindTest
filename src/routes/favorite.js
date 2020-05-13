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
})


Router.delete("/tracks/:track_id", (req, res) => {
    const token = req.headers['x-access-token'] 
    
    console.log("headers", req.headers)
    console.log("req.params.track_id", req.params.track_id)
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;

        const sql = "DELETE FROM favorite WHERE user_id = ? AND track_id = ?"
        const values = [
            decoded.id,
            req.params.track_id
        ]
        connection.query(sql, values, (err, result) => {
            if (err) throw err;
            return res.status(200).send("Removed favorite")
        })     
    })
})


module.exports = Router