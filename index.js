require("dotenv").config();
const port = process.env.PORT;
const hostname = process.env.HOST;

const express = require("express");
const app = express();
const http = require("http");
const server = http.createServer(app);
const cors = require("cors");

app.use(express.json());
app.use(express.urlencoded({ extended: true })); // f
app.use(cors({ origin: "*" }));

const UserModel = require("./models/users");

const db = require("./db/index.js");
const Sequelize = require("sequelize");
const User = UserModel(db, Sequelize);

app.use("/users",(req,res)=>{
  return  User.findAll()
      .then((users) => {
        res.json(users);
      })
      .catch((err) =>
        res.status(500).send({
          message: err,
        })
      );
});

try {
  db.authenticate();
  console.log("Connection has been established successfully.");
} catch (error) {
  console.error("Unable to connect to the database:", error);
}

server.listen(port, () => {
  console.log(`Example app listening at http://${hostname}:${port}`);
});
