/**
 * @author Muhammad Daffa Ilhami
 * @email mdaffailhami@gmail.com
 * @create date 2021-03-28 - 12:18:25
 * @modify date 2021-03-28 - 12:18:25
 * @desc [Mulai menggunakan backend pada tanggal 28/03/2021]
 */

require("dotenv").config();

const { resolve } = require("path");
const express = require("express");
const routes = require("./routes");

const app = express();
const port = process.env.PORT || 1234;

// Router
app.use(routes.api.contactMe);
app.use(routes.api.visitHistory);

// Frontend static file
app.use(express.static(resolve(__dirname, "frontend/dist")));
app.get("*", (req, res) => {
  res.sendFile(resolve(__dirname, "frontend/dist/index.html"));
});

app.listen(port, () => console.log("Server is running on port", port));
