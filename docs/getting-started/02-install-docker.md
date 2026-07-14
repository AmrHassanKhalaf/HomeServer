# Install Docker

This guide explains how to install Docker Engine and Docker Compose, which are required to run HomeServer.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 10–15 minutes |

---

# Overview

HomeServer runs entirely on Docker Compose.

Before continuing, Docker Engine and Docker Compose must be installed and working correctly.

This guide uses the official Docker installation method.

---

# Remove Old Versions

If Docker was previously installed, remove older packages:

```bash
sudo apt remove docker docker-engine docker.io containerd runc -y
```

---

# Install Docker

Update package information:

```bash
sudo apt update
```

Install the required packages:

```bash
sudo apt install -y ca-certificates curl gnupg
```

Create Docker's keyring directory:

```bash
sudo install -m 0755 -d /etc/apt/keyrings
```

Download Docker's GPG key:

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

Set the correct permissions:

```bash
sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

Add the official Docker repository:

```bash
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Update package information again:

```bash
sudo apt update
```

Install Docker Engine and Docker Compose:

```bash
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

---

# Enable Docker

Enable Docker to start automatically:

```bash
sudo systemctl enable docker
sudo systemctl start docker
```

---

# Optional

Allow your user to run Docker commands without sudo:

```bash
sudo usermod -aG docker $USER
```

Log out and log back in for the changes to take effect.

---

# Verify Installation

Check the installed versions:

```bash
docker --version

docker compose version
```

Verify the Docker service:

```bash
systemctl status docker
```

Run the test container:

```bash
docker run hello-world
```

Expected result:

- Docker Engine is installed.
- Docker Compose is available.
- The Hello World container runs successfully.

---

# Next Step

Continue with **03 – Clone HomeServer**.
