# 📥 Clone HomeServer

## Goal

Download the HomeServer project and prepare it for deployment.

---

## Clone Repository

```bash
git clone https://github.com/AmrHassanKhalaf/HomeServer.git

cd HomeServer
```

---

## Verify Repository

```bash
tree -L 1
```

Expected folders:

```text
apps/
assets/
compose/
docker/
docs/
monitoring/
scripts/
```

---

## Configure Environment

```bash
cp compose/.env.example compose/.env

nano compose/.env
```

Update:

- MYSQL_DATABASE
- MYSQL_USER
- MYSQL_PASSWORD
- MYSQL_ROOT_PASSWORD

---

## Tested Environment

- Ubuntu 26.04 LTS
- Git 2.53.0

---

## Result

HomeServer is ready to start.

---

## Next

➡ 04-first-start.md
