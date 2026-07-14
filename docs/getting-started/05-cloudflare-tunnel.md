# Configure Cloudflare Tunnel

This guide explains how to connect HomeServer to the Internet securely using Cloudflare Tunnel.

| Difficulty | Intermediate |
|------------|--------------|
| Estimated Time | 15–20 minutes |

---

# Overview

HomeServer uses Cloudflare Tunnel to securely expose services to the Internet without opening ports on your router.

Benefits include:

- No Port Forwarding
- Free SSL Certificates
- Secure HTTPS Connections
- Easy DNS Management
- Zero Trust Ready

---

# Prerequisites

Before continuing, make sure you have:

- A Cloudflare account
- A domain managed by Cloudflare
- HomeServer running successfully
- Docker Compose working correctly

---

# Install Cloudflared

Follow the official Cloudflare installation guide for your operating system.

After installation, verify the version:

```bash
cloudflared --version
```

---

# Authenticate

Login to your Cloudflare account:

```bash
cloudflared tunnel login
```

A browser window will open.

Authorize your domain.

---

# Create a Tunnel

Create a new tunnel:

```bash
cloudflared tunnel create homeserver
```

Cloudflare will generate:

- Tunnel ID
- Credentials file

Keep both files.

---

# Configure DNS

Create DNS routes for your applications.

Example:

```text
portfolio.example.com
api.example.com
ai.example.com
grafana.example.com
```

Use:

```bash
cloudflared tunnel route dns homeserver portfolio.example.com

cloudflared tunnel route dns homeserver api.example.com

cloudflared tunnel route dns homeserver ai.example.com
```

---

# Configure Tunnel

Create a configuration file:

```yaml
tunnel: <Tunnel-ID>

credentials-file: ~/.cloudflared/<Tunnel-ID>.json

ingress:
  - hostname: portfolio.example.com
    service: http://localhost:80

  - hostname: api.example.com
    service: http://localhost:80

  - hostname: ai.example.com
    service: http://localhost:80

  - service: http_status:404
```

---

# Start the Tunnel

Run:

```bash
cloudflared tunnel run homeserver
```

Or install it as a system service:

```bash
sudo cloudflared service install
```

Then:

```bash
sudo systemctl enable cloudflared

sudo systemctl start cloudflared
```

---

# Verify the Tunnel

Check service status:

```bash
systemctl status cloudflared
```

Verify DNS:

```bash
nslookup portfolio.example.com
```

Open your domain in the browser.

The HomeServer application should be accessible over HTTPS.

---

# Troubleshooting

If the tunnel does not connect:

- Verify your Cloudflare authentication.
- Check the credentials file.
- Verify DNS records.
- Check:

```bash
journalctl -u cloudflared
```

---

# Verification Checklist

- Tunnel is connected.
- DNS records are active.
- HTTPS is working.
- Applications are publicly accessible.
- No router ports are exposed.

---

# Next Step

Continue with the Guides section to learn how each HomeServer service works.
