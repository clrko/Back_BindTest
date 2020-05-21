const express = require("express")
const jwt = require("jsonwebtoken")

const connection = require("../helper/db.js")
const jwtSecret = require("../../jwtSecret.js")

const Router = express.Router()

Router.get("/allscores", (req, res) => {
    const token = req.headers['x-access-token']
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;
        const sql = "SELECT id, username, score, genre FROM score WHERE user_id = ?"
        const values = [decoded.id]
        connection.query(sql, values, (err, result) => {
            if (err) throw err;
            return res.status(200).send(result);
        })
    })
})

Router.get("/standard", (req, res) => {
    const sql = "SELECT * FROM score"
    connection.query(sql, (err, result) => {
        if (err) throw err
        return res.status(200).send(result)
    })
})

Router.get("/standard/:genre", (req, res) => {
    const genre = req.params.genre.replace(/%20/g, ' ').replace(/%2F/g, '/')
    const sql = "SELECT * FROM score WHERE genre = ?"
    const values = [genre]
    connection.query(sql, values, (err, result) => {
        if (err) throw err
        return res.status(200).send(result)
    })
})

Router.put("/updateScore/:id", (req, res) => {
    const id = req.params.id
    const sql = `UPDATE score SET score = ? WHERE id = ?`
    const values = [
        req.body.score,
        id
    ]
    connection.query(sql, values, (err, result) => {
        if (err) throw err
        return res.status(200).send(result)
    })
})

Router.post("/addScore", (req, res) => {
    const token = req.headers['x-access-token']
    const tokenData = jwt.verify(token, jwtSecret, (err, decoded) => {
        if (err) throw err;
        const sql = "INSERT INTO score (user_id, username, score, genre) VALUES (?,?,?,?)"
        const values = [
            decoded.id,
            req.body.username,
            req.body.score,
            req.body.genre.replace(/%20/g, ' ').replace(/%2F/g, '/'),
        ]
        connection.query(sql, values, (err, result) => {
            if (err) throw err
            return res.status(200).send(result)
        })
    })
})

module.exports = Router