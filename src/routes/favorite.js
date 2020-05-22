const express = require("express")
const jwt = require("jsonwebtoken")

const connection = require("../helper/db.js")
const jwtSecret = process.env.JWT_SECRET || require("../../jwtSecret.js")

const Router = express.Router()


Router.get("/", (req, res) => {

    const token = req.headers['x-access-token']
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;
        const sql = "SELECT track_id FROM favorite WHERE user_id = ?"
        const values = [decoded.id]
        
        connection.query(sql, values, (err, result) => {
            if (err) throw err;
            return res.status(200).send(result);
        })
    })
})

Router.post("/tracks", (req, res) => {

    const token = req.headers['x-access-token'] 
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;

        const sql = "INSERT INTO favorite (user_id, track_id) VALUES (?, ?)"
        const values = [
            decoded.id,
            req.body.track_id,
        ]
        connection.query(sql, values, (err, result) => {
            if (err) throw err;
            return res.status(200).send("Successfully added to favorite");
        })
    })
})


Router.delete("/tracks/:track_id", (req, res) => {
    const token = req.headers['x-access-token'] 

    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;

        const sql = "DELETE FROM favorite WHERE user_id = ? AND track_id = ?"
        const values = [
            decoded.id,
            req.params.track_id
        ]
        connection.query(sql, values, (err, result) => {
            if (err) throw err;
            const sql2 = "SELECT (track_id) FROM favorite WHERE user_id = ?"
            const values = [decoded.id]
            
            connection.query(sql2, values, (err, result) => {
                if (err) throw err;
                return res.status(200).send(result);
            })
        })     
    })
})


module.exports = Router