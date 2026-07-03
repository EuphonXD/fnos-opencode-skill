# FnOS Skill for opencode

这个 skill 为在飞牛NAS上运行的 opencode 提供系统管理、Docker操作、存储管理和故障排除指导。

## 安装

skill 已安装在以下位置：
```
~/.config/opencode/skills/fnos/SKILL.md
```

## 使用方法

### 自动加载
skill 会在以下情况自动加载：
- 执行飞牛NAS相关操作时
- 处理Docker容器管理时
- 进行存储卷操作时
- 配置网络和服务时
- 排查系统问题时

### 手动加载
在 opencode 中，可以使用以下命令手动加载skill：
```
使用 fnos skill
```

## 主要功能

### 1. 系统信息查询
```bash
# 获取飞牛版本信息
cat /etc/fnos-version

# 检查系统资源
df -h
free -h
```

### 2. Docker容器管理
```bash
# 列出容器
docker ps

# 管理容器
docker start/stop/restart <container>
```

### 3. 存储管理
```bash
# 检查存储空间
df -h
du -sh /vol*/*

# 管理卷
ls -la /vol1/
```

### 4. 网络配置
```bash
# 检查网络
ip addr show
netstat -tuln
```

## 可信来源

执行飞牛操作时，请优先参考：

1. **飞牛开发者开放平台 (FNOSP)**
   - https://github.com/FNOSP
   - 用途：API文档、开发者指南

2. **飞牛帮助中心**
   - https://help.fnnas.com/
   - 用途：官方文档、功能指南

3. **飞牛社区论坛**
   - https://club.fnnas.com/
   - 用途：故障排除、社区解决方案

### 搜索文档
```bash
# 官方文档搜索
https://help.fnnas.com/?search=关键词

# 社区搜索
https://club.fnnas.com/search.php?mod=forum&searchid=65&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=关键词
```

## 最佳实践

### 安全性
1. 定期更新系统和Docker镜像
2. 使用强密码和密钥认证
3. 配置防火墙规则
4. 启用数据加密

### 性能优化
1. 设置容器资源限制
2. 使用SSD存储
3. 监控系统资源
4. 优化网络配置

### 开发流程
1. 在开发环境测试
2. 使用版本控制
3. 编写测试用例
4. 文档化配置

## 故障排除

### 常见问题
1. **容器无法启动**
   - 检查日志：`docker logs <container>`
   - 验证卷挂载

2. **存储权限问题**
   - 检查用户/组映射
   - 验证文件权限

3. **网络连接问题**
   - 检查网络配置
   - 验证端口映射

### 获取帮助
1. 搜索官方文档
2. 查阅社区论坛
3. 检查FNOSP GitHub

## 配置

### 自定义skill路径
如果需要将skill放在其他位置，可以在 opencode.json 中配置：
```json
{
  "skills": {
    "paths": ["~/.config/opencode/skills"]
  }
}
```

### 禁用skill
如果需要禁用此skill，可以重命名或删除：
```
~/.config/opencode/skills/fnos/SKILL.md
```

## 更新

要更新skill，编辑以下文件：
```
~/.config/opencode/skills/fnos/SKILL.md
```

更新后需要重启opencode使更改生效。

## 贡献

要改进此skill：
1. 参考官方文档验证信息
2. 在安全环境中测试命令
3. 文档化飞牛特定考虑
4. 包含故障排除提示