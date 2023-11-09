const express = require("express");
const mysql = require("mysql2");

const app = express();
const port = 9001;

app.use(express.json());

// Création de la connexion à la base de données
const db = mysql.createConnection({
  host: "articles-bdd",
  user: "root",
  password: "root",
  database: "articles-db",
  port: 3306,
});

// Route pour lister tous les articles
app.get("/articles", (req, res) => {
  db.query("SELECT * FROM article", (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

// Route pour créer un nouvel article
app.post("/articles", (req, res) => {
  const { libelle, prix } = req.body;
  db.query(
    "INSERT INTO article (libelle, prix) VALUES (?, ?)",
    [libelle, prix],
    (err, results) => {
      if (err) throw err;
      res.status(201).json({ id: results.insertId, ...req.body });
    }
  );
});

// Démarrage du serveur
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
