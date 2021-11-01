const express = require("express");
const expressAsyncHandler = require("express-async-handler");
const User = require("../models/userModal.js");
const { generateToken } = require("../utils.js");

const userRouter = express.Router();

userRouter.post(
  "/login",
  expressAsyncHandler(async (req, res) => {
    const user = await User.findOne({ email: req.body.email });
    if (user) {
      if (req.body.password === user.password) {
        res.send({
          _id: user._id,
          name: user.name,
          gender: user.gender,
          email: user.email,
          password: user.password,
          image: user.image,
          token: generateToken(user),
        });
        return;
      }
    }
    res.status(401).send({ message: "Invalid user email or password" });
  })
);

userRouter.post(
  "/register",
  expressAsyncHandler(async (req, res) => {
    const user = new User({
      name: req.body.name,
      email: req.body.email,
      password: req.body.password,
    });
    const created_user = await user.save();
    res.send({
      _id: created_user._id,
      name: created_user.name,
      email: created_user.email,
      password: created_user.password,
      token: generateToken(created_user),
    });
  })
);

module.exports = userRouter;
