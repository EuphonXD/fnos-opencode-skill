# fnos-opencode-skill

> 飞牛 NAS (FnOS) 专用 opencode skill，为 AI 编程助手提供 FnOS 系统管理能力。

[![GitHub](https://img.shields.io/badge/GitHub-fnos--opencode--skill-blue)](https://github.com/EuphonXD/fnos-opencode-skill)

## 简介

在飞牛 NAS 上部署 opencode 后，AI 助手不仅能写代码，还能直接管理 FnOS 系统——Docker 容器、存储卷、服务、网络、故障排除。

设计参考了 [Superpowers](https://github.com/obra/superpowers) 的 skill 框架。

## 安装

```bash
git clone https://github.com/EuphonXD/fnos-opencode-skill.git
mkdir -p ~/.config/opencode/skills/fnos
cp -r fnos-opencode-skill/* ~/.config/opencode/skills/fnos/
```

重启 opencode 生效。

## 功能

| 模块 | 说明 |
|------|------|
| 系统管理 | 版本查询、服务启停、资源监控 |
| Docker | 容器增删改查、镜像管理、日志、部署 |
| 存储 | 卷管理、权限、备份 |
| 网络 | 接口、防火墙、端口 |
| 故障排除 | 诊断决策树、日志分析 |

## 可信来源

skill 在执行操作前会优先查阅：

1. **[FNOSP](https://github.com/FNOSP)** — API 文档、开发者指南
2. **[help.fnnas.com](https://help.fnnas.com/)** — 官方文档
3. **[club.fnnas.com](https://club.fnnas.com/)** — 社区方案

## 使用示例

```
> 检查飞牛上所有 Docker 容器状态
> 在 /vol1/docker 下部署一个新的 nginx
> 排查容器 A 的端口映射为什么不生效
> 备份所有 Docker 容器配置
```

## 文件结构

```
fnos/
├── SKILL.md      # opencode 指令文件（给 AI 看）
├── README.md     # 本文件（给人看）
├── INSTALL.md    # 安装说明
├── SUMMARY.md    # 速查摘要
├── test.sh       # Linux/macOS 测试
├── test.ps1      # Windows 测试
└── .gitignore
```

## 更新

```bash
cd ~/.config/opencode/skills/fnos && git pull origin main
```

## 卸载

```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 参考

- [Superpowers](https://github.com/obra/superpowers) — skill 设计框架
- [FNOSP](https://github.com/FNOSP) | [飞牛帮助](https://help.fnnas.com/) | [飞牛社区](https://club.fnnas.com/)

## License

MIT