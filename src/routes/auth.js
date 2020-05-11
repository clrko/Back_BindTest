const express = require("express")

const Router = express.Router()

Router.get("/", (req, res) => {
    res.send("je suis dans la route /auth")
})

Router.post("/login",(req, res) => {
    console.log("req.body", req.body)
    res.send("Je suis dans la route /auth/login")
})

module.exports = Router