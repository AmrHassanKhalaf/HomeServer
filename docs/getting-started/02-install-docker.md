# 🐳 Install Docker

## Goal

Install Docker Engine and Docker Compose.

---

## Requirements

- Ubuntu Server 24.04 LTS or newer
- Internet Connection
- Sudo Privileges

---

## Verify Installation

Run:

```bash
docker --version
docker compose version
```

Expected output:

```text
Docker version 29.x
Docker Compose version v5.x
```

---

## Verify Docker Service

Run:

```bash
systemctl status docker --no-pager
```

Expected:

```text
Active: active (running)
```

---

## Verify Docker Engine

Run:

```bash
docker run hello-world
```

Expected:

```text
Hello from Docker!
```

---

## Result

Docker is ready to run HomeServer.

---

## Next

➡ 03-clone-project.md
