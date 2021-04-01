const express = require("express");
const formidable = require("formidable");
const nodemailer = require("nodemailer");

const router = express.Router();

router.post("/api/contact-me", (req, res) => {
  res.header("Access-Control-Allow-Origin", "*");

  const form = new formidable({ multiples: true });
  form.parse(req, (err, fields, files) => {
    if (err) console.error(err);

    console.log(fields);

    const transporter = nodemailer.createTransport({
      service: "gmail",
      auth: {
        user: process.env.NODEMAILER_EMAIL,
        pass: process.env.NODEMAILER_PASS,
      },
    });

    transporter.sendMail(
      {
        from: process.env.NODEMAILER_EMAIL,
        to: "mdaffailhami@gmail.com",
        subject: "New message in mdaffailhami's personal web",
        text: `Message from:\nName: ${fields.name}\nEmail: ${fields.email}\n\nMessage:\n${fields.message}`, // plain text body
      },
      (err, info) => {
        if (err) {
          console.error(err);
          res.json({ status: false, message: "failed to send message!\n" + err });
          return;
        }
        console.log(info);
        res.json({ status: true, message: "Message sent to " + info.envelope.to });
      }
    );
  });
});

module.exports = router;
