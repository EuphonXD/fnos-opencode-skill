---
name: fnos
description: Use ONLY when working with FnOS (飞牛NAS) system management, Docker containers, storage, networking, service configuration, or FnOS troubleshooting. Covers docker ps, docker logs, systemctl, /vol1, /vol2, fnos services, and all FnOS-specific operations. Do NOT use for general coding unrelated to FnOS.
---

# FnOS Skill for opencode

You are running on a FnOS (飞牛NAS) system. This skill gives you the knowledge to manage FnOS beyond just writing code. You have access to the shell on the FnOS host itself.

## Core Behavior Rules

1. **Research FIRST, then act.** Before executing any FnOS operation you are unsure about, consult the trusted sources below using the `webfetch` tool. Never guess system paths or service names.
2. **Use webfetch proactively.** When the user asks about FnOS configuration, API usage, or troubleshooting, fetch the relevant documentation page.
3. **Prefer official sources.** Trust priority: FNOSP GitHub > help.fnnas.com > club.fnnas.com.
4. **Safety first.** Never run destructive commands (`rm -rf`, `docker rm -f`, `mkfs`, etc.) without explicit user confirmation.

## Trusted Sources — How to Use

### 1. FnOS Developer Open Platform (FNOSP)
- **URL**: https://github.com/FNOSP
- **Use for**: API documentation, SDKs, official code examples, developer workflows
- **When**: User asks about FnOS APIs, SDK integration, or developer documentation
- **How**: `webfetch` the repo README or specific repo files

### 2. FnOS Help Center
- **URL**: https://help.fnnas.com/
- **Use for**: Official documentation, feature guides, configuration options, system requirements
- **When**: User asks about system settings, feature usage, configuration, official docs
- **How**: Use search URL pattern: `https://help.fnnas.com/?search=KEYWORD`
  - Replace KEYWORD with the search term (URL-encode if needed)
  - Example: `https://help.fnnas.com/?search=Docker` for Docker-related docs

### 3. FnOS Community Forum
- **URL**: https://club.fnnas.com/
- **Use for**: Community solutions, troubleshooting discussions, real-world user experiences
- **When**: Official docs don't help, or user faces a specific error/scenario
- **How**: Use search URL pattern: `https://club.fnnas.com/search.php?mod=forum&searchid=65&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=KEYWORD`
  - Replace KEYWORD with the search term (URL-encode if needed)

### Research Workflow

When asked to perform an FnOS operation:
1. If you already know the exact commands and paths, proceed directly
2. If you are unsure, use `webfetch` on one of the trusted sources
3. If the first source doesn't answer, try the next one
4. Present findings to the user before executing

## FnOS System Paths

| Path | Purpose |
|------|---------|
| `/vol1/` | Primary storage volume |
| `/vol2/` | Secondary storage volume (if exists) |
| `/etc/fnos/` | FnOS configuration files |
| `/var/lib/docker/` | Docker data directory |
| `/usr/local/fnos/` | FnOS system binaries |

## FnOS Operations Cheatsheet

### System Information
```bash
cat /etc/fnos-version    # FnOS version
uname -a                 # Kernel info
df -h                    # Disk usage
free -h                  # Memory usage
uptime                   # System uptime
ps aux                   # Running processes
ip addr show             # Network interfaces
```

### Docker Container Management
```bash
docker ps                        # Running containers
docker ps -a                     # All containers
docker logs --tail 100 <name>    # Recent logs
docker exec -it <name> /bin/bash # Enter container
docker start/stop/restart <name> # Lifecycle
docker rm <name>                 # Remove container
docker rm -f <name>              # Force remove
docker images                    # Local images
docker pull <image>:<tag>        # Pull image
docker build -t <name>:<tag> .   # Build image
docker inspect <name>            # Full container info
docker stats --no-stream         # Resource usage
docker system prune -a           # Clean unused
```

### Storage Management
```bash
df -h                           # Overview
du -sh /vol1/*                  # Volume usage
ls -la /vol1/                   # File listing
find /vol1/ -type f -size +100M # Find large files
mount | grep /vol               # Active mounts
```

### Service Management
```bash
systemctl status fnos-*         # All FnOS services
systemctl restart <service>     # Restart service
systemctl enable/disable <svc>  # Enable/disable
journalctl -u <service> -f      # Follow service logs
systemctl list-units --type=service # All services
```

### Network
```bash
ip addr show            # Interfaces
netstat -tuln           # Open ports
ss -tuln                # Open ports (modern)
iptables -L -n          # Firewall rules
cat /etc/resolv.conf    # DNS config
```

## Common Workflows

### Deploy a New Docker App on FnOS
```bash
# 1. Create storage dirs
mkdir -p /vol1/docker/<app>/{data,config}
chown -R 1000:1000 /vol1/docker/<app>

# 2. Run container with volume mounts
docker run -d \
  --name <app> \
  -v /vol1/docker/<app>/data:/data \
  -v /vol1/docker/<app>/config:/config \
  -p <host_port>:<container_port> \
  --restart unless-stopped \
  <image>:<tag>
```

### Check Health of All Containers
```bash
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
docker stats --no-stream
```

### Backup Docker Setup
```bash
BACKUP_DIR="/vol1/backup/$(date +%Y%m%d)"
mkdir -p $BACKUP_DIR
docker ps --format "{{.Names}}" | while read c; do
  docker commit $c $c:backup
  docker save $c:backup | gzip > $BACKUP_DIR/$c.tar.gz
done
tar -czf $BACKUP_DIR/config.tar.gz /etc/fnos/ /vol1/docker/*/config/
```

## Troubleshooting Decision Tree

**Container won't start?**
1. `docker logs <name>` — read the error
2. `docker inspect <name>` — check mounts, network, env
3. Check resource: `df -h`, `free -h`
4. If still stuck, search: `https://help.fnnas.com/?search=<error keyword>`

**Storage permission denied?**
1. `ls -la` on the volume path
2. Check container user: `docker inspect <name> | grep -i user`
3. Match host directory ownership to container user (usually 1000:1000)
4. `chown -R <uid>:<gid> /vol1/docker/<app>/`

**Network unreachable?**
1. `docker ps` — verify port mappings
2. `netstat -tuln | grep <port>` — is port listening?
3. `iptables -L -n` — check firewall
4. `curl -I http://localhost:<port>` — test locally

**Service not running?**
1. `systemctl status <service>` — check state
2. `journalctl -u <service> --since "10 min ago"` — recent logs
3. `systemctl restart <service>` — try restart

## Safety Rules

1. Always `df -h` before writing large files to ensure space
2. Never `docker rm -f` on a production container without user confirmation
3. Never modify `/etc/fnos/` configs without backing up first
4. Always test with `--dry-run` or equivalent when available
5. When in doubt, use `webfetch` on a trusted source before executing