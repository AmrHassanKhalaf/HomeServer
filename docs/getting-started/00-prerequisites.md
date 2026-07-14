# Prerequisites

Before installing HomeServer, verify that your system meets the minimum requirements described below.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 5 minutes |

---

# Overview

This guide explains the minimum hardware, operating system, software and network requirements needed to install and run HomeServer successfully.

---

# Hardware Requirements

## Minimum Requirements

| Component | Requirement |
|-----------|-------------|
| CPU | Dual-Core 64-bit Processor |
| RAM | 4 GB |
| Storage | 30 GB Available SSD Space |
| Network | Stable Internet Connection |

Suitable for learning, testing and personal projects.

---

## Recommended Requirements

| Component | Recommendation |
|-----------|----------------|
| CPU | Quad-Core Processor |
| RAM | 8 GB or more |
| Storage | 100 GB SSD |
| Network | Gigabit Ethernet |

Recommended for running the complete HomeServer stack.

---

# Tested Platforms

| Platform | Status |
|----------|--------|
| Legacy Laptop (64-bit) | ✅ Tested |
| Desktop PC | ✅ Tested |
| Mini PC | ✅ Supported |
| Virtual Machine | ✅ Supported |
| Raspberry Pi (64-bit) | ⚠ Experimental |

---

# Supported Operating Systems

The following operating systems are officially supported:

- Ubuntu Server 26.04 LTS
- Ubuntu Desktop 26.04 LTS

Other Ubuntu LTS releases may work but are not officially tested.

---

# Required Software

| Software | Required |
|----------|----------|
| Git | ✅ |
| Docker Engine | ✅ |
| Docker Compose | ✅ |

Installation instructions are provided in the following guides.

---

# Required Accounts

| Account | Status |
|---------|--------|
| GitHub | Required |
| Cloudflare | Recommended |
| Docker Hub | Optional |

---

# Network Requirements

HomeServer is designed to run without exposing your router to the Internet.

Recommended configuration:

- Cloudflare Tunnel
- Static Local IP Address
- SSH Enabled

Port forwarding is **not required**.

---

# Verify Your Environment

Run the following commands:

```bash
git --version
docker --version
docker compose version
hostnamectl
```

Expected result:

- Git version is displayed.
- Docker Engine is installed.
- Docker Compose is available.
- Ubuntu system information is displayed.

---

# Next Step

Continue with **01 – Install Ubuntu Server**.
