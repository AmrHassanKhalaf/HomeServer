# Environment Variables Reference

This document describes the environment variables used by HomeServer.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 5 minutes |

---

# Overview

HomeServer stores its configuration inside:

```text
compose/.env
```

An example configuration is provided in:

```text
compose/.env.example
```

---

# Project

| Variable | Description |
|----------|-------------|
| PROJECT_NAME | Docker Compose project name |

---

# MariaDB

| Variable | Description |
|----------|-------------|
| MYSQL_DATABASE | Database name |
| MYSQL_USER | Database user |
| MYSQL_PASSWORD | Database password |
| MYSQL_ROOT_PASSWORD | Root password |
| MYSQL_PORT | Development MariaDB host port |

---

# Network

| Variable | Description |
|----------|-------------|
| NGINX_PORT | Nginx HTTP port |
| DEV_NGINX_PORT | Development Nginx HTTP port |
| FASTAPI_PORT | FastAPI port |
| REDIS_PORT | Redis port |
| PORTAINER_PORT | Portainer HTTP port |
| PROMETHEUS_PORT | Prometheus HTTP port |
| GRAFANA_PORT | Grafana HTTP port |
| UPTIME_KUMA_PORT | Uptime Kuma HTTP port |

---

# Best Practices

- Never commit `.env`.
- Keep passwords secure.
- Use `.env.example` as a template.
- Backup configuration files regularly.

---

# Related Documentation

- Getting Started → Clone HomeServer
- Backup Guide
