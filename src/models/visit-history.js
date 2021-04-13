const mongoose = require("mongoose");

mongoose.connect(
  "mongodb+srv://mdaffailhami:" +
    process.env.MONGOOSE_CONNECTION_PASS +
    "@cluster0.cqhij.mongodb.net/mdaffailhami-web?retryWrites=true&w=majority",
  {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  },
  (err) => {
    if (err) console.error(err);
  }
);

const visitHistory = mongoose.model(
  "visit-history",
  new mongoose.Schema({
    ipv4: String,
    time: String,
  }),
  "visit-history"
);

module.exports = visitHistory;
