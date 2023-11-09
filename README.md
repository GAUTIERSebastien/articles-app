# Application Articles - API Web et Base de Données Dockerisées

## Aperçu

Ce dépôt contient la configuration pour un service backend dockerisé et une base de données MySQL pour la gestion des données d'articles.
L'application est conçue pour fonctionner au sein de conteneurs Docker, assurant un environnement de développement et de déploiement cohérent.

## Guide d'installation de l'application

Ce document est un guide étape par étape pour installer et configurer l'application web sur votre système local.

### Prérequis

Avant de procéder, assurez-vous que les logiciels suivants sont installés :

- Git
- Docker
- Docker Compose

### Installation

#### Étape 1: Clonage du dépôt

Ouvrez un terminal et clonez le dépôt Git avec la commande suivante :

```bash
git clone git@github.com:GAUTIERSebastien/articles-app.git
```

#### Étape 2: Lancement de Docker Compose

```bash
cd articles-app

docker-compose up --build
```

#### Étape 3: Interaction avec l'API

##### Récupérer tous les articles

```bash
GET http://localhost:9002/articles
```

##### Créer un nouvel article

```bash
POST http://localhost:9002/articles
Content-Type: application/json

{
    "libelle": "Article de test",
    "prix": 12.34
}
```
