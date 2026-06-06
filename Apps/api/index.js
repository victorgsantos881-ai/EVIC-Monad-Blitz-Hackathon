import express from "express";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());

// health check
app.get("/", (req, res) => {
  res.json({ status: "EVIC API running" });
});

// mock user by wallet
app.get("/user/:wallet", (req, res) => {
  res.json({
    wallet: req.params.wallet,
    role: "user",
    status: "active"
  });
});

app.listen(4000, () => {
  console.log("API running on http://localhost:4000");
});

