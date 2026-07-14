# Nginx Guide

This guide explains how HomeServer uses Nginx as a reverse proxy to route requests to the appropriate services.

| Difficulty | Intermediate |
|------------|--------------|
| Estimated Time | 10 minutes |

---

# Overview

HomeServer uses a single Nginx instance as the entry point for all HTTP requests.

Instead of exposing every application individually, Nginx receives incoming requests and forwards them to the correct service running inside Docker.

Current routing:

```text
Internet
      │
      ▼
Cloudflare Tunnel
      │
      ▼
Nginx Reverse Proxy
      │
 ┌────┼───────────────┐
 ▼    ▼               ▼
React Laravel API  FastAPI
```

---

# Configuration Files

All Nginx configuration files are located in:

```text
docker/nginx/
├── nginx.conf
└── conf.d/
    ├── portfolio.conf
    ├── api.conf
    └── ai.conf
```

---

# Current Applications

| Configuration | Service | Purpose |
|---------------|---------|---------|
| portfolio.conf | React | Frontend Application |
| api.conf | Laravel | REST API |
| ai.conf | FastAPI | AI Services |

---

# Test Configuration

Before restarting Nginx, always verify the configuration:

```bash
docker compose exec nginx nginx -t
```

Expected output:

```text
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
```

---

# Reload Configuration

Apply the new configuration without restarting the entire stack:

```bash
docker compose restart nginx
```

Verify that the container is running:

```bash
docker compose ps nginx
```

---

# Verify Routing

Open the configured domains in your browser and verify:

- The React frontend loads successfully.
- The Laravel API responds correctly.
- The FastAPI service is reachable.
- No **404 Bad Gateway** or **502 Bad Gateway** errors appear.

---

# Best Practices

- Create one configuration file for each application.
- Keep upstream names descriptive.
- Validate the configuration before restarting Nginx.
- Store all virtual hosts inside `conf.d/`.
- Avoid modifying the default Nginx configuration unless necessary.

---

# Related Documentation

- Getting Started → First Start
- Reference → Architecture
- Reference → Folder Structure

---

# Next Guide

Continue with **Monitoring**.
