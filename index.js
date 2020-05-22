const express = require("express")
const cors = require("cors")
const morgan = require("morgan")

const auth = require("./src/routes/auth")
const connection = require("./src/helper/db.js")
const favorite = require("./src/routes/favorite")
const ranking = require("./src/routes/ranking")
const register = require("./src/routes/register")

const app = express()

const corsOptions = {
    origin: 'https://wild-thunder.netlify.app/',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}

app.use(cors(corsOptions))
app.use(morgan("dev"))
app.use(express.json())
app.use(express.urlencoded({extended: true}))

app.use("/auth", auth)
app.use("/favorite", favorite)
app.use("/ranking", ranking)
app.use("/register", register)

const port = process.env.PORT || 4242
app.listen(port, () => console.log('server started on port', port))


