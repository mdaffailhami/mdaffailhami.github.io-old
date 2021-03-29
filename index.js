/**
 * @author Muhammad Daffa Ilhami
 * @email mdaffailhami@gmail.com
 * @create date 2021-03-28 - 12:18:25
 * @modify date 2021-03-28 - 12:18:25
 * @desc [Mulai menggunakan backend pada tanggal 28/03/2021]
 */

require("dotenv").config();
// console.log(process.env.NODEMAILER_EMAIL);
const express = require("express");
const formidable = require("formidable");
const nodemailer = require("nodemailer");

const app = express();
const port = process.env.PORT || 1234;

app.post("/api/contact-me", (req, res) => {
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
          res.json({ status: false, message: "failed to send message\n" + err });
          return;
        }
        console.log(info);
        res.json({ status: true, message: "Message sent! to " + info.envelope.to });
      }
    );
  });
});

app.use(express.static(__dirname + "/frontend/dist"));
app.get("*", (req, res) => {
  res.sendFile(__dirname + "/frontend/dist/index.html");
});

app.listen(port, () => console.log("Server is running on port", port));
