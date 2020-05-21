const express = require("express")

const apiKey = process.env.API_KEY || require("./apiKeySecret.js")

const Router = express.Router()

Router.get("/", (req, res) => {
    return res.status(200).send({key:apiKey})
})

module.exports = Router