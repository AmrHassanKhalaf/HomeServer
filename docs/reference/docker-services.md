# Docker Services Reference

This document describes every Docker service included in HomeServer.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 10 minutes |

---

# Overview

HomeServer is built on Docker Compose.

Each service has a dedicated responsibility and communicates with other services through the internal Docker network.

---

# Infrastructure Services

| Service | Purpose | Port |
|----------|---------|------|
| Nginx | Reverse Proxy | 80 |
| MariaDB | Database | 3306 |
| Redis | Cache | 6379 |

---

# Application Services

| Service | Purpose | Port |
|----------|---------|------|
| React | Frontend | Internal |
| Laravel | Backend API | Internal |
| FastAPI | AI Services | 8000 |

---

# Monitoring Services

| Service | Purpose | Port |
|----------|---------|------|
| Prometheus | Metrics Collection | 9090 |
| Grafana | Dashboards | 3000 |
| Node Exporter | Host Metrics | 9100 |
| cAdvisor | Container Metrics | 8080 |

---

# Management Services

| Service | Purpose | Port |
|----------|---------|------|
| Portainer | Docker Management | 9000 |
| Uptime Kuma | Service Monitoring | 3001 |

---

# View Running Services

List all running containers:

```bash
docker compose ps
```

---

# View Logs

View logs for every service:

```bash
docker compose logs
```

View logs for a specific service:

```bash
docker compose logs nginx

docker compose logs grafana

docker compose logs mariadb
```

---

# Restart Services

Restart one service:

```bash
docker compose restart nginx
```

Restart the entire stack:

```bash
docker compose restart
```

---

# Related Documentation

- Architecture Reference
- Monitoring Guide
- Nginx Guide
