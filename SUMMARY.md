# FnOS Skill 功能总结

## 核心能力

- **系统管理**: 飞牛系统信息查询、服务管理
- **Docker 管理**: 容器增删改查、镜像管理、日志查看、资源监控
- **存储管理**: 磁盘/卷/目录操作、权限管理、备份恢复
- **网络配置**: 网络接口、防火墙、端口管理
- **故障排除**: 常见问题诊断、日志分析、恢复操作

## 可信来源

执行飞牛操作时，优先参考：

1. https://github.com/FNOSP — 开发者文档
2. https://help.fnnas.com/ — 官方帮助中心
3. https://club.fnnas.com/ — 社区论坛

## 常用命令速查

```bash
# 系统
cat /etc/fnos-version && df -h && free -h

# Docker
docker ps && docker stats --no-stream

# 存储
ls -la /vol1/ && du -sh /vol1/*

# 网络
ip addr show && netstat -tuln

# 服务
systemctl status fnos-*
```

## 安装

```bash
git clone https://github.com/EuphonXD/fnos-opencode-skill.git
cp -r fnos-opencode-skill/* ~/.config/opencode/skills/fnos/
```

重启 opencode 生效。