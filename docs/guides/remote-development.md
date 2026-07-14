# Remote Development Guide

This guide explains how to manage HomeServer remotely using SSH and Visual Studio Code.

| Difficulty | Intermediate |
|------------|--------------|
| Estimated Time | 10 minutes |

---

# Overview

HomeServer is designed to be managed remotely.

After the initial installation, all administration tasks can be performed without connecting a monitor or keyboard to the server.

---

# Remote Management Methods

| Method | Purpose |
|---------|---------|
| SSH | Remote terminal access |
| VS Code Remote SSH | Remote development |
| Portainer | Docker management |
| Grafana | Monitoring |
| Uptime Kuma | Service monitoring |

---

# Connect Using SSH

From another computer:

```bash
ssh username@server-ip
```

Example:

```bash
ssh server@192.168.1.100
```

After connecting, verify the server:

```bash
hostnamectl
```

---

# VS Code Remote SSH

Install the following extension:

```text
Remote - SSH
```

In VS Code:

1. Open Command Palette.
2. Select **Remote-SSH: Connect to Host**.
3. Enter:

```text
server@server-ip
```

VS Code will open the HomeServer project directly on the remote machine.

---

# Open the Project

Navigate to the project directory:

```bash
cd ~/HomeServer
```

Open the project:

```bash
code .
```

If the `code` command is unavailable, continue working directly through the VS Code Remote SSH session.

---

# Verify Docker

Check running services:

```bash
docker compose ps
```

Check Docker status:

```bash
systemctl status docker
```

---

# Common Tasks

View logs:

```bash
docker compose logs
```

Restart all services:

```bash
docker compose restart
```

Update containers:

```bash
docker compose pull

docker compose up -d
```

---

# Security Recommendations

- Disable password authentication if using SSH keys.
- Never expose SSH directly to the Internet unless properly secured.
- Keep SSH updated.
- Restrict server access to trusted users only.

---

# Best Practices

- Use SSH keys instead of passwords.
- Keep the project synchronized with GitHub.
- Create backups before major updates.
- Monitor the server regularly.

---

# Related Documentation

- Getting Started → First Start
- Guides → Security
- Guides → Monitoring

---

# Next Guide

Continue with **Add New Application**.
