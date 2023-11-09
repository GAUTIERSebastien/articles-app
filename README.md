# Aide

## Récupérer une image sur https://hub.docker.com/

```bash
docker pull tomcat:8
```

## Démarrer un container

```bash
docker run -p <port_machine>:<port_conteneur>
```

### Exemple: une verrsion spécifique est paramétré => 8.5.43

```bash
docker run -p 9000:8080 tomcat:8.5.43
```

## TP

### Test création et démarage db ok

```bash
docker build --tag articles-bd .
```

```bash
docker run -p 9000:3306 -d articles-bd
```

### Lancer Docker Compose ok

```bash
docker-compose up --build
```

### Inspection de => articles-app ok

```bash
docker inspect articles-app_v-bdd-data
```
