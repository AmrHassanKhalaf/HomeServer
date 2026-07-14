# Backup Guide

This guide explains how HomeServer backs up databases, Docker volumes and configuration files.

| Difficulty | Beginner |
|------------|----------|
| Estimated Time | 10 minutes |

---

# Overview

Regular backups protect your applications and data from accidental loss or hardware failure.

HomeServer includes backup scripts for databases, Docker volumes and configuration files.

---

# Backup Scripts

All backup scripts are located in:

```text
scripts/
├── backup-all.sh
├── backup-db.sh
├── backup-volumes.sh
├── backup-configs.sh
└── update-system.sh
```

---

# Backup Directory

All backup files are stored in:

```text
backups/
├── configs/
├── database/
├── volumes/
└── logs/
```

---

# Create a Full Backup

Run:

```bash
./scripts/backup-all.sh
```

This script automatically backs up:

- MariaDB databases
- Docker volumes
- Configuration files

---

# Backup Only the Database

```bash
./scripts/backup-db.sh
```

---

# Backup Docker Volumes

```bash
./scripts/backup-volumes.sh
```

---

# Backup Configuration Files

```bash
./scripts/backup-configs.sh
```

---

# Verify Backups

List the backup directory:

```bash
tree backups
```

Verify that new backup files have been created successfully.

---

# Restore

Database backups can be restored using:

```bash
docker compose exec mariadb \
mysql -u root -p < backup.sql
```

Volume restoration depends on the backup archive and Docker volume configuration.

---

# Best Practices

- Create backups before updating HomeServer.
- Keep multiple backup copies.
- Store backups on another drive or NAS.
- Test restore procedures regularly.

---

# Troubleshooting

If a backup fails:

```bash
docker compose logs mariadb
```

Verify that:

- Docker is running.
- The database container is healthy.
- There is enough free disk space.

---

# Related Documentation

- Guides → Monitoring
- Guides → Security
- Reference → Folder Structure

---

# Next Guide

Continue with **Security**.
