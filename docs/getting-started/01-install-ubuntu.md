# Install Ubuntu

This guide explains how to prepare an Ubuntu installation for HomeServer.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 20–30 minutes |

---

# Overview

HomeServer is officially tested on Ubuntu 26.04 LTS.

Both Ubuntu Server and Ubuntu Desktop are supported. Ubuntu Server is recommended for production environments because it provides a lightweight installation with lower resource usage.

---

# Supported Editions

| Edition | Status | Recommended |
|----------|--------|-------------|
| Ubuntu Server 26.04 LTS | ✅ | ⭐⭐⭐⭐⭐ |
| Ubuntu Desktop 26.04 LTS | ✅ | ⭐⭐⭐⭐☆ |

---

# Minimum Installation

During the Ubuntu installation:

- Install OpenSSH Server.
- Use the default partition layout unless you have specific requirements.
- Create a non-root administrator account.
- Connect the machine to the Internet.

---

# After Installation

Update the operating system:

```bash
sudo apt update
sudo apt upgrade -y
```

Reboot if required:

```bash
sudo reboot
```

---

# Verify Installation

Check the Ubuntu version:

```bash
lsb_release -a
```

Expected output:

- Ubuntu 26.04 LTS
- Correct hostname
- 64-bit architecture

---

# Verify Network

Check the IP address:

```bash
ip a
```

Verify Internet connectivity:

```bash
ping -c 4 google.com
```

---

# Verify SSH

Confirm that the SSH service is running:

```bash
systemctl status ssh
```

The service should display:

```text
Active: active (running)
```

---

# Next Step

Continue with **02 – Install Docker**.
