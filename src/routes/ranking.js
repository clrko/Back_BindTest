const express = require("express")

const connection = require("../helper/db.js")

const Router = express.Router()

Router.get("/", (req, res) => {
    res.send("je suis dans la route /ranking")
})

Router.get("/standard", (req, res) => {
    const sql = "SELECT * FROM score"
    connection.query(sql, (err, result) => {
        if (err) throw err
        return res.status(200).send(result)
    })
})

Router.get("/standard/:genre", (req, res) => {
    console.log("REQ PARAMS", req.params.genre)
    const genre = req.params.genre
    const sql = "SELECT * FROM score WHERE genre = ?"
    const values = [genre]
    connection.query(sql, values, (err, result) => {
        if (err) throw err
        return res.status(200).send(result)
    })
})

Router.put("/updateScore/:id", (req, res) => {
    console.log("body", req.body)
    console.log("params", req.params)
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
    console.log("req.body", req.body)
    const sql = "INSERT INTO score (username, score, genre) VALUES (?,?,?)"
    const values = [
        req.body.username,
        req.body.score,
        req.body.genre,
    ]
    connection.query(sql, values, (err, result) => {
        if (err) throw err
        return res.status(200).send(result)
    })
})

module.exports = Router