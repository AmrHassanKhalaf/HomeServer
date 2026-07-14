# Clone HomeServer

This guide explains how to download HomeServer, configure the environment and prepare the project for the first startup.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 5 minutes |

---

# Overview

After installing Ubuntu and Docker, the next step is to download the HomeServer repository and prepare the project configuration.

---

# Clone the Repository

Clone the latest stable version of HomeServer:

```bash
git clone https://github.com/AmrHassanKhalaf/HomeServer.git

cd HomeServer
```

---

# Verify the Repository

Confirm that the project was cloned successfully:

```bash
tree -L 1
```

Expected output:

```text
assets/
compose/
docker/
docs/
monitoring/
scripts/
README.md
```

---

# Configure the Environment

Create the environment configuration file:

```bash
cp compose/.env.example compose/.env
```

Open the file:

```bash
nano compose/.env
```

Update the required values.

Example:

```env
PROJECT_NAME=homeserver

MYSQL_DATABASE=portfolio_api
MYSQL_USER=portfolio
MYSQL_PASSWORD=example_password
MYSQL_ROOT_PASSWORD=example_root_password
MYSQL_PORT=3307

NGINX_PORT=80
DEV_NGINX_PORT=8080
FASTAPI_PORT=8001
REDIS_PORT=6379

PORTAINER_PORT=9000
PROMETHEUS_PORT=9090
GRAFANA_PORT=3000
UPTIME_KUMA_PORT=3002
```

---

# Verify Docker Compose

Validate the configuration before starting the stack:

```bash
docker compose config
```

If no errors are displayed, the configuration is valid.

---

# Project Structure

The repository is organized as follows:

| Directory | Purpose |
|-----------|---------|
| assets | Images and diagrams |
| compose | Docker Compose configuration |
| docker | Docker and Nginx configuration |
| docs | Project documentation |
| monitoring | Prometheus configuration |
| scripts | Utility scripts |

---

# Next Step

Continue with **04 – First Start**.
