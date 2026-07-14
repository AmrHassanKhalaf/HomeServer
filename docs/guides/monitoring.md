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
Node Exporter
       │
       ▼
   Prometheus
       ▲
       │
    cAdvisor
       │
       ▼
    Grafana
```

---

# Components

| Service | Purpose |
|----------|---------|
| Prometheus | Collects metrics |
| Grafana | Dashboards and visualization |
| Node Exporter | Host metrics |
| cAdvisor | Docker container metrics |

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

# Verify Node Exporter

Open:

```text
http://localhost:9100/metrics
```

Metrics should be displayed.

---

# Verify cAdvisor

Open:

```text
http://localhost:8080
```

Docker containers should be visible.

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
