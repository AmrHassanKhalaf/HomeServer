# ☁️ Cloudflare Tunnel

## Goal

Expose HomeServer securely to the Internet without opening router ports.

---

## Requirements

- Cloudflare Account
- Domain Name
- HomeServer running

---

## Install Cloudflared

Follow the official Cloudflare installation guide.

---

## Login

```bash
cloudflared tunnel login
```

---

## Create Tunnel

```bash
cloudflared tunnel create homeserver
```

---

## Configure Tunnel

Create:

~/.cloudflared/config.yml

---

## Route DNS

```bash
cloudflared tunnel route dns homeserver your-domain.com
```

---

## Install Service

```bash
sudo cloudflared service install
```

---

## Verification

```bash
systemctl status cloudflared
```

Expected:

```
Active: active (running)
```

---

## Result

Your HomeServer is securely accessible through Cloudflare Tunnel.

---

## Next

➡ docs/guides/nginx.md
