const express = require("express")
const morgan = require("morgan")

const app = express()

app.use(morgan("dev")) /* voir la doc */
app.use(express.json()) /* for parsing application/json */
app.use(express.urlencoded({extended: true})) /* for parsing application/x-www-formurlencoded */

app.get("/", (req, res) => {
    res.send("je suis dans le /")
})

app.listen("4242", console.log("http://localhost:4242"))

