const express = require("express");
const app = express();
const port = 3000;
const path = require("path");

app.get("/api/movies/:id", (req, res) => {
  res.json({ id: "movie id" });
});

app.get("api/movies", (req, res) => {
  res.send("All films");
});

app.get("/api/employee/", (req, res) => {
  res.sendStatus(304);
});

app.get("api/employee/:name", (req, res) => {
  res.status(404).send("Unable to retrieve employee");
});

app.listen(port, err => {
  if (err) {
    throw new Error("Something bad happened...");
  }

  console.log(`Server is listening on ${port}`);
});
