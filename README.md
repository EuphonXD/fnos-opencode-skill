# fnos-opencode-skill

> 飞牛 NAS (FnOS) 专用 opencode skill，在代码编写之外还能完成飞牛系统管理操作。

[![GitHub](https://img.shields.io/badge/GitHub-fnos--opencode--skill-blue)](https://github.com/EuphonXD/fnos-opencode-skill)

## 简介

这是一个为在飞牛 NAS 上部署的 [opencode](https://opencode.ai) 设计的 skill，让 AI 编程助手在写代码之外还能完成飞牛 NAS 的系统管理、Docker 操作、存储管理、网络配置等任务。

## 安装

### 方法一：Git 克隆

```bash
git clone https://github.com/EuphonXD/fnos-opencode-skill.git
mkdir -p ~/.config/opencode/skills/fnos
cp -r fnos-opencode-skill/* ~/.config/opencode/skills/fnos/
```

### 方法二：手动下载

1. 下载仓库 ZIP：https://github.com/EuphonXD/fnos-opencode-skill/archive/refs/heads/main.zip
2. 解压后复制所有文件到 `~/.config/opencode/skills/fnos/`

### 安装后

重启 opencode 使 skill 生效。

## 功能

| 模块 | 说明 |
|------|------|
| 系统管理 | 飞牛系统信息查询、服务管理、用户管理 |
| Docker 管理 | 容器增删改查、镜像管理、日志查看 |
| 存储管理 | 磁盘/卷/目录操作、权限管理、备份 |
| 网络配置 | 网络接口、防火墙、端口管理 |
| 故障排除 | 常见问题诊断、日志分析、恢复操作 |

## 可信来源

执行飞牛操作时，skill 会优先参考以下渠道：

1. **[飞牛开发者开放平台](https://github.com/FNOSP)** — API 文档、开发者指南
2. **[飞牛帮助中心](https://help.fnnas.com/)** — 官方文档、功能说明
3. **[飞牛社区论坛](https://club.fnnas.com/)** — 社区方案、故障排除

## 使用示例

在 opencode 中直接描述你的需求，skill 会自动介入：

```
> 帮我检查飞牛NAS上的Docker容器都在正常运行吗
> 在 /vol1/docker 下创建一个新项目的目录并设置权限
> 排查一下为什么容器 A 的端口映射不生效
```

## 文件结构

```
fnos/
├── SKILL.md      # opencode 使用的 skill 指令文件
├── README.md     # 本文件（给人看的说明）
├── INSTALL.md    # 详细安装说明
├── SUMMARY.md    # 功能总结
├── test.sh       # Linux/macOS 测试脚本
├── test.ps1      # Windows 测试脚本
└── .gitignore
```

## 更新

```bash
cd ~/.config/opencode/skills/fnos/
git pull origin main
```

更新后重启 opencode。

## 卸载

```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 贡献

1. Fork 本仓库
2. 创建分支：`git checkout -b feature/xxx`
3. 提交更改：`git commit -m 'Add xxx'`
4. 推送分支：`git push origin feature/xxx`
5. 创建 Pull Request

## 参考

- [Superpowers 框架](https://github.com/obra/superpowers) — skill 设计参考
- [飞牛开发者平台](https://github.com/FNOSP)
- [飞牛帮助中心](https://help.fnnas.com/)
- [飞牛社区](https://club.fnnas.com/)

## License

MIT