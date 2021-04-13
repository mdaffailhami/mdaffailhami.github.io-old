const express = require("express");
const momentTimezone = require("moment-timezone");
const models = require("../../models");

const router = express.Router();

router.post("/api/visit-history", async (req, res) => {
  res.header("Access-Control-Allow-Origin", "*");
  req.on("data", (chunk) => {
    const data = JSON.parse(String(chunk));
    const { ipv4 } = data;

    const time = momentTimezone().tz("Asia/Jakarta");

    // Ngepost ke database
    models.visitHistory
      .create({ ipv4, time })
      .then((doc) => {
        console.log("POST - Visit History:\n", doc);
        res.json({ status: true, message: "Visit History created!", data: doc });
      })
      .catch((err) => {
        res.json({ status: false, message: "Creating Visit History failed!", error: err });
        console.error(err);
      });
  });
});

module.exports = router;
