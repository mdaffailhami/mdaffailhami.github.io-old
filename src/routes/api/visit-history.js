const express = require("express");
const momentTimezone = require("moment-timezone");
const models = require("../../models");

const router = express.Router();

router.post("/api/visit-history", (req, res) => {
  res.header("Access-Control-Allow-Origin", "*");

  const timeNow = momentTimezone().tz("Asia/Jakarta");

  // Ngepost ke database
  models.visitHistory
    .create({ time: timeNow })
    .then((doc) => {
      console.log("POST - Visit History:\n", doc);
      res.json({ status: true, message: "Visit History created!", time: timeNow });
    })
    .catch((err) => {
      res.json({ status: false, message: "Creating Visit History failed!", error: err });
      console.error(err);
    });
});

module.exports = router;
