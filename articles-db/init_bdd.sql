CREATE DATABASE IF NOT EXISTS `articles-db`;
USE `articles-db`;

CREATE TABLE article (
  id INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(100) NOT NULL,
  prix DECIMAL(10,2),
  PRIMARY KEY (id)
);

INSERT INTO article (libelle, prix) VALUES ('Vélo', 500.00);
INSERT INTO article (libelle, prix) VALUES ('Moto', 4200.00);
INSERT INTO article (libelle, prix) VALUES ('Kayak', 299.89);
INSERT INTO article (libelle, prix) VALUES ('Skate', 600.49);
