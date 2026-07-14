# Troubleshooting

This document provides solutions to common issues that may occur while installing or running HomeServer.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 5 minutes |

---

# Docker Does Not Start

## Symptoms

- Docker service is inactive.
- Containers cannot start.

## Solution

Verify the Docker service:

```bash
systemctl status docker
```

Start Docker:

```bash
sudo systemctl start docker
```

Enable Docker on boot:

```bash
sudo systemctl enable docker
```

---

# Docker Compose Configuration Error

## Symptoms

`docker compose config`

returns an error.

## Solution

Verify:

```bash
compose/.env
```

Then run:

```bash
docker compose config
```

Fix any reported configuration errors.

---

# Container Keeps Restarting

## Symptoms

Container status shows:

```text
Restarting
```

## Solution

View logs:

```bash
docker compose logs <service-name>
```

Check:

- Environment variables
- Database connectivity
- Port conflicts

---

# Nginx Returns 502 Bad Gateway

## Solution

Verify backend services:

```bash
docker compose ps
```

Check Nginx configuration:

```bash
docker compose exec nginx nginx -t
```

Restart Nginx:

```bash
docker compose restart nginx
```

---

# Cloudflare Tunnel Is Offline

Verify the service:

```bash
systemctl status cloudflared
```

View logs:

```bash
journalctl -u cloudflared
```

Confirm that DNS records point to the correct tunnel.

---

# Database Connection Failed

Verify the MariaDB container:

```bash
docker compose ps mariadb
```

View database logs:

```bash
docker compose logs mariadb
```

Verify the database credentials inside:

```text
compose/.env
```

---

# Monitoring Services Are Unavailable

Restart monitoring:

```bash
docker compose restart prometheus grafana node-exporter cadvisor
```

Verify Prometheus targets:

```text
http://localhost:9090
```

---

# Useful Commands

```bash
docker compose ps

docker compose logs

docker compose restart

docker compose down

docker compose up -d

docker system df
```

---

# Still Need Help?

Before opening an issue, include:

- Ubuntu version
- Docker version
- Docker Compose version
- HomeServer version
- Relevant logs
- Error message
