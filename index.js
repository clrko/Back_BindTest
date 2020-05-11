const express = require("express")
const cors = require("cors")
const morgan = require("morgan")

const auth = require("./src/routes/auth")
const connection = require("./src/helper/db.js")

const app = express()

app.use(cors())
app.use(morgan("dev")) /* voir la doc */
app.use(express.json()) /* for parsing application/json */
app.use(express.urlencoded({extended: true})) /* for parsing application/x-www-formurlencoded */

app.use("/auth", auth)

app.get("/", (req, res) => {
    res.send("je suis dans le /")
})

app.listen("4242", console.log("http://localhost:4242"))


