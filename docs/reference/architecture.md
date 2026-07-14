# Architecture Reference

This document describes the architecture of HomeServer and how all components interact.

| Difficulty | Intermediate |
|------------|--------------|
| Estimated Time | 10 minutes |

---

# Overview

HomeServer is built around a layered architecture that separates networking, applications, storage and monitoring.

This design makes the infrastructure easier to maintain, extend and troubleshoot.

---

# Architecture Diagram

The latest architecture diagram is available at:

```text
assets/diagrams/
├── architecture-light.png
├── architecture-dark.png
└── architecture.svg
```

---

# Architecture Layers

## Internet Layer

Responsible for secure public access.

Components:

- Cloudflare DNS
- Cloudflare Tunnel

---

## Reverse Proxy Layer

Responsible for routing requests.

Component:

- Nginx

---

## Application Layer

Hosts user applications.

Current applications:

- React
- Laravel API
- FastAPI

---

## Data Layer

Responsible for persistent storage.

Services:

- MariaDB
- Redis

---

## Monitoring Layer

Collects metrics from the server and Docker containers.

Services:

- Prometheus
- Grafana
- Node Exporter
- cAdvisor

---

## Management Layer

Provides administration tools.

Services:

- Portainer
- Uptime Kuma

---

# Request Flow

```text
Internet
      │
      ▼
Cloudflare Tunnel
      │
      ▼
Nginx
      │
 ┌────┼───────────────┐
 ▼    ▼               ▼
React Laravel API  FastAPI
      │
      ▼
MariaDB / Redis
```

---

# Design Principles

- Modular architecture
- Docker-first deployment
- Secure remote access
- Service isolation
- Easy scalability

---

# Related Documentation

- Guides → Nginx
- Guides → Monitoring
- Getting Started → First Start
