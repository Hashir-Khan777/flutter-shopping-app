const express = require("express");
const cors = require("cors");
const mongoose = require("mongoose");
const userRouter = require("./routers/userRouter.js");
const dotenv = require("dotenv");
const bodyparser = require("body-parser");

dotenv.config();
const app = express();

app.use(bodyparser());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

mongoose.connect(process.env.MONGODB_URL, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

app.use("/api/users", userRouter);

app.use((req, res, next) => {
  res.header("Access-Control-Allow-Origin", "*");
  next();
});

app.use((err, req, res, next) => {
  res.status(500).send({ message: err.message });
});

app.listen(process.env.PORT);
