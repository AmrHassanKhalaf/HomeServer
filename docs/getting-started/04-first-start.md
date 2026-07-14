# 🚀 First Start

## Goal

Start all HomeServer services.

---

## Start Stack

```bash
cd compose

docker compose up -d
```

---

## Verify Containers

```bash
docker compose ps
```

Expected services:

- nginx
- react
- laravel
- fastapi
- mariadb
- redis
- prometheus
- grafana
- portainer
- uptime-kuma
- node-exporter
- cadvisor

---

## Verify Home Page

Open:

```
http://SERVER_IP
```

Expected:

HomeServer Landing Page

---

## Tested Environment

- Docker 29.6.1
- Docker Compose v5.3.1

---

## Result

Your HomeServer stack is running.

---

## Next

➡ 05-cloudflare-tunnel.md
