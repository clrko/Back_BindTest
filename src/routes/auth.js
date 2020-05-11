const express = require("express")
const jwt = require("jsonwebtoken")

const jwtSecret = require("../../jwtSecret.js")

const Router = express.Router()

Router.get("/", (req, res) => {
    res.send("je suis dans la route /auth")
})

Router.post("/login",(req, res) => {
    console.log("req.body", req.body)

    if(
        req.body.username === 'pinto' &&
        req.body.password === 'coco'

    ){
    const tokenUserInfo = {
        username : req.body.username,
        status : "Chicken Lord"
    } 
    const token = jwt.sign(tokenUserInfo,jwtSecret)
    console.log("voici le token", token)
    /* res.header("Access-Control-Expose-Headers" , "x-acess-token")
    res.set('x-acess-token', token) */
    res.status(200).send('user connected')

}
})

module.exports = Router