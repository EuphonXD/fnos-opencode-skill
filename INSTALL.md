# FnOS Skill 安装说明

## 已完成的安装

skill 已成功安装到以下位置：
```
~/.config/opencode/skills/fnos/SKILL.md
```

## 验证安装

### 1. 检查skill文件
```bash
# 查看skill文件
cat ~/.config/opencode/skills/fnos/SKILL.md

# 查看README
cat ~/.config/opencode/skills/fnos/README.md
```

### 2. 测试skill加载
在opencode中，执行以下命令测试skill是否正确加载：
```
使用 fnos skill
```

或者尝试执行一些飞牛相关操作，skill应该会自动加载。

## 使用方法

### 自动触发
skill会在以下情况自动加载：
- 执行飞牛NAS系统管理命令时
- 管理Docker容器时
- 操作存储卷时
- 配置网络时
- 排查系统问题时

### 手动加载
如果需要手动加载skill：
```
加载 fnos skill
```

## 主要功能

### 1. 系统信息查询
```bash
# 飞牛版本信息
cat /etc/fnos-version

# 系统资源检查
df -h
free -h
```

### 2. Docker管理
```bash
# 容器管理
docker ps
docker start/stop/restart <container>

# 镜像管理
docker images
docker pull <image>
```

### 3. 存储管理
```bash
# 存储空间检查
df -h
du -sh /vol*/*

# 卷管理
ls -la /vol1/
```

### 4. 网络配置
```bash
# 网络检查
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

## 更新skill

要更新skill，编辑以下文件：
```
~/.config/opencode/skills/fnos/SKILL.md
```

更新后需要重启opencode使更改生效。

## 卸载skill

要卸载skill，删除以下目录：
```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 故障排除

### skill未加载
1. 检查文件路径是否正确
2. 验证文件格式是否正确
3. 重启opencode

### 命令不工作
1. 检查命令语法
2. 验证权限
3. 查看系统日志

### 获取帮助
1. 查看skill文档
2. 搜索飞牛官方文档
3. 查阅社区论坛

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

## 贡献

要改进此skill：
1. 参考官方文档验证信息
2. 在安全环境中测试命令
3. 文档化飞牛特定考虑
4. 包含故障排除提示