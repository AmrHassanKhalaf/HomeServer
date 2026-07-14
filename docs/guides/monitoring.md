# Monitoring Guide

This guide explains how HomeServer monitors the server, containers and applications using Prometheus, Grafana, Node Exporter and cAdvisor.

| Difficulty | Intermediate |
|------------|--------------|
| Estimated Time | 10 minutes |

---

# Overview

Monitoring is a core part of HomeServer.

Every important component continuously reports metrics that are collected by Prometheus and visualized in Grafana.

Current monitoring stack:

```text
Node Exporter ──┐
                ├──► Prometheus ───► Grafana
 cAdvisor ──────┘
```

---

# Components

| Service | Purpose |
|----------|---------|
| Prometheus | Collects metrics |
| Grafana | Dashboards and visualization |
| Node Exporter | Host metrics, scraped on the internal Docker network |
| cAdvisor | Docker container metrics, scraped on the internal Docker network |

---

# Check Running Services

```bash
docker compose ps prometheus grafana node-exporter cadvisor
```

All services should display the **Up** status.

---

# Verify Prometheus

Open:

```text
http://localhost:9090
```

Go to:

```text
Status → Targets
```

Every target should be **UP**.

---

# Verify Grafana

Open:

```text
http://localhost:3000
```

Verify that:

- Grafana loads successfully.
- Dashboards are accessible.
- Prometheus is connected as a data source.

---

# Verify internal scrapes

Node Exporter and cAdvisor are not published on host ports in the current production compose file.
They are reachable only on the internal Docker network unless you explicitly add a port mapping.

In Prometheus, confirm these targets are **UP**:

- `node-exporter:9100`
- `cadvisor:8080`

---

# Troubleshooting

View logs:

```bash
docker compose logs prometheus

docker compose logs grafana

docker compose logs node-exporter

docker compose logs cadvisor
```

Restart monitoring services:

```bash
docker compose restart prometheus grafana node-exporter cadvisor
```

---

# Best Practices

- Monitor the server continuously.
- Keep Grafana dashboards organized.
- Review Prometheus targets regularly.
- Investigate restarting containers immediately.

---

# Related Documentation

- Reference → Docker Services
- Guides → Backup
- Reference → Architecture

---

# Next Guide

Continue with **Backup**.
