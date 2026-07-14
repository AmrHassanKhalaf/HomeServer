# Add New Application

This guide explains how to add a new application to HomeServer using the existing infrastructure.

| Difficulty | Intermediate |
|------------|--------------|
| Estimated Time | 15 minutes |

---

# Overview

HomeServer is designed to host multiple applications using a shared infrastructure.

Every application follows the same deployment workflow:

```text
Application
      │
      ▼
Docker Compose
      │
      ▼
Nginx Reverse Proxy
      │
      ▼
Cloudflare Tunnel
      │
      ▼
Internet
```

---

# Step 1 — Create the Application

Create a new directory inside:

```text
apps/
```

Example:

```text
apps/my-app/
```

Add your application source code.

---

# Step 2 — Create a Docker Service

Open:

```text
compose/docker-compose.yml
```

Create a new service.

Example:

```yaml
my-app:
  build: ../apps/my-app
  restart: unless-stopped
```

Adjust the configuration according to your application requirements.

---

# Step 3 — Configure Nginx

Create a new configuration file:

```text
docker/nginx/conf.d/my-app.conf
```

Configure the reverse proxy for your application.

Example:

```nginx
location / {
    proxy_pass http://my-app:3000;
}
```

---

# Step 4 — Configure Cloudflare

Create a DNS record for the application.

Example:

```text
my-app.example.com
```

Update the Cloudflare Tunnel configuration to route requests to the new application.

---

# Step 5 — Start the Application

Start the new service:

```bash
docker compose up -d
```

Verify that the container is running:

```bash
docker compose ps
```

---

# Step 6 — Verify

Confirm that:

- The container is running.
- Nginx forwards requests correctly.
- The application is accessible.
- HTTPS is working through Cloudflare Tunnel.

---

# Troubleshooting

View application logs:

```bash
docker compose logs my-app
```

Check the Nginx configuration:

```bash
docker compose exec nginx nginx -t
```

Restart Nginx if necessary:

```bash
docker compose restart nginx
```

---

# Best Practices

- Use one Docker service per application.
- Create one Nginx configuration file per application.
- Keep environment variables outside the source code.
- Test locally before exposing the application.
- Create a backup before major changes.

---

# Related Documentation

- Guides → Nginx
- Guides → Security
- Reference → Folder Structure

---

# Next Step

Continue with the **Reference** documentation to learn more about the HomeServer architecture and configuration.
