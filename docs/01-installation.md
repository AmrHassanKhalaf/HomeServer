# 🚀 Installation Guide

This guide explains how to deploy HomeServer on a fresh Ubuntu Server installation.

---

# Requirements

## Hardware

- CPU: Intel Core i3 or higher
- RAM: 8 GB (Minimum)
- Storage: 120 GB SSD Recommended
- Internet Connection

---

# Operating System

- Ubuntu Server 24.04 LTS

---

# Required Software

- Docker
- Docker Compose
- Git
- Cloudflared
- VS Code (Optional)

---

# Clone Repository

```bash
git clone https://github.com/AmrHassanKhalaf/HomeServer.git
cd HomeServer
```

---

# Configure Environment

```bash
cp compose/.env.example compose/.env
nano compose/.env
```

Update the required variables before starting the services.

---

# Start Services

```bash
cd compose
docker compose up -d
```

---

# Verify Containers

```bash
docker compose ps
```

Expected services:

- Nginx
- React
- Laravel
- FastAPI
- MariaDB
- Redis
- Prometheus
- Grafana
- Portainer
- Uptime Kuma

---

# Configure Cloudflare Tunnel

Authenticate:

```bash
cloudflared tunnel login
```

Create tunnel:

```bash
cloudflared tunnel create homeserver
```

Start tunnel:

```bash
cloudflared tunnel run homeserver
```

---

# Verify Installation

Check containers:

```bash
docker compose ps
```

Check logs:

```bash
docker compose logs
```

---

# Next Step

Continue with:

➡️ [Architecture Guide](02-architecture.md)
