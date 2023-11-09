# Aide à l'installation

## Etape 1 => Cloner le repository

## Etape 2 => Lancer Docker Compose

```bash
docker-compose up --build
```

## Etape 3 => choisir sa requête

```javascript

### Get all articles
GET http://localhost:9002/articles


### Create a new article
POST http://localhost:9002/articles
Content-Type: application/json

{
    "libelle": "Article de test",
    "prix": 12.34
}

```
