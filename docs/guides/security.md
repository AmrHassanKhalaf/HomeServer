# Security Guide

This guide explains the security principles and best practices used by HomeServer.

| Difficulty | Intermediate |
|------------|--------------|
| Estimated Time | 10 minutes |

---

# Overview

Security is a fundamental part of HomeServer.

Instead of exposing services directly to the Internet, HomeServer uses modern security practices to protect applications and infrastructure.

---

# Security Architecture

HomeServer follows this security model:

```text
Internet
      │
      ▼
Cloudflare
      │
      ▼
Cloudflare Tunnel
      │
      ▼
Nginx Reverse Proxy
      │
      ▼
Docker Services
```

No router port forwarding is required.

---

# Security Features

| Feature | Status |
|----------|--------|
| Cloudflare Tunnel | ✅ |
| Reverse Proxy | ✅ |
| HTTPS | ✅ |
| Docker Isolation | ✅ |
| SSH Administration | ✅ |

---

# SSH Access

Verify that SSH is running:

```bash
systemctl status ssh
```

Only trusted users should have SSH access.

---

# Docker Security

List running containers:

```bash
docker compose ps
```

Only required services should be running.

Inspect containers if necessary:

```bash
docker ps

docker inspect <container-name>
```

---

# Firewall

If UFW is enabled:

```bash
sudo ufw status
```

Only allow required services.

Example:

```bash
sudo ufw allow OpenSSH
```

---

# Cloudflare Tunnel

Verify that Cloudflare Tunnel is active:

```bash
systemctl status cloudflared
```

If the tunnel is running correctly, public access is available without opening router ports.

---

# Software Updates

Keep Ubuntu updated:

```bash
sudo apt update

sudo apt upgrade -y
```

Update Docker images:

```bash
docker compose pull

docker compose up -d
```

---

# Backup Before Updates

Before updating HomeServer:

```bash
./scripts/backup-all.sh
```

Never perform major updates without a backup.

---

# Security Checklist

- SSH is enabled.
- Cloudflare Tunnel is active.
- No unnecessary router ports are open.
- Docker services are running normally.
- System packages are updated.
- Recent backups are available.

---

# Best Practices

- Use strong passwords.
- Keep Ubuntu updated.
- Keep Docker images updated.
- Review logs regularly.
- Verify backups frequently.

---

# Related Documentation

- Getting Started → Configure Cloudflare Tunnel
- Guides → Backup
- Guides → Monitoring

---

# Next Guide

Continue with **Remote Development**.
