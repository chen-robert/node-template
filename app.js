global.__rootdir = __dirname;

const express = require("express");
const bodyParser = require("body-parser");
const autoprefixer = require("express-autoprefixer");
const lessMiddleware = require("less-middleware");
const cookieSession = require("cookie-session");

const app = express();
app.set("trust proxy", "127.0.0.1");
app.set("view engine", "ejs");

app.use(bodyParser.urlencoded({ extended: false }));

const staticPath = __dirname + "/public";
app.use(lessMiddleware(staticPath));
app.use(autoprefixer({ browsers: ["last 3 versions", "> 1%"], cascade: false }));
app.use(express.static(staticPath));

module.exports = app;
