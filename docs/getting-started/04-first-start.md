# First Start

This guide explains how to start the complete HomeServer stack and verify that every service is running correctly.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 10 minutes |

---

# Overview

HomeServer uses Docker Compose to orchestrate all infrastructure and application services.

Before starting, ensure that Docker Engine and Docker Compose are installed and that the environment file has been configured.

---

# Start HomeServer

Start all services:

```bash
docker compose up -d
```

Docker will automatically download the required images during the first startup.

---

# Verify Running Containers

List all running containers:

```bash
docker compose ps
```

Expected result:

- Every service should have the status **Up**.
- No service should be restarting continuously.

---

# Included Services

| Service | Purpose |
|----------|---------|
| Nginx | Reverse Proxy |
| React | Frontend |
| Laravel | Backend API |
| FastAPI | AI Services |
| MariaDB | Database |
| Redis | Cache |
| Prometheus | Metrics Collection |
| Grafana | Dashboards |
| Portainer | Docker Management |
| Uptime Kuma | Service Monitoring |
| Node Exporter | Host Metrics |
| cAdvisor | Container Metrics |

---

# Verify Individual Services

Check the container status:

```bash
docker compose ps
```

View container logs:

```bash
docker compose logs
```

View logs for a specific service:

```bash
docker compose logs nginx

docker compose logs laravel

docker compose logs fastapi
```

---

# Restart Services

Restart the complete stack:

```bash
docker compose restart
```

Restart a single service:

```bash
docker compose restart nginx
```

---

# Stop HomeServer

Stop all services:

```bash
docker compose down
```

Stop and remove unused images:

```bash
docker compose down --remove-orphans
```

---

# Troubleshooting

If a service does not start:

1. Verify the `.env` configuration.
2. Run:

```bash
docker compose config
```

3. Check the service logs:

```bash
docker compose logs <service-name>
```

4. Verify Docker status:

```bash
systemctl status docker
```

---

# Verification Checklist

- Docker Engine is running.
- All containers are **Up**.
- No container is restarting.
- No configuration errors are reported.
- Logs do not contain critical errors.

---

# Next Step

Continue with **05 – Configure Cloudflare Tunnel**.
