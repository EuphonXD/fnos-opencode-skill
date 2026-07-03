# FnOS Skill 测试脚本 (Windows PowerShell)
# 用于验证skill是否正确安装和配置

Write-Host "=== FnOS Skill 测试 ===" -ForegroundColor Green
Write-Host ""

# 检查skill文件是否存在
Write-Host "1. 检查skill文件..." -ForegroundColor Yellow
if (Test-Path -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md") {
    Write-Host "   ✓ SKILL.md 文件存在" -ForegroundColor Green
} else {
    Write-Host "   ✗ SKILL.md 文件不存在" -ForegroundColor Red
    exit 1
}

# 检查README文件
Write-Host "2. 检查README文件..." -ForegroundColor Yellow
if (Test-Path -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\README.md") {
    Write-Host "   ✓ README.md 文件存在" -ForegroundColor Green
} else {
    Write-Host "   ✗ README.md 文件不存在" -ForegroundColor Red
}

# 检查INSTALL文件
Write-Host "3. 检查INSTALL文件..." -ForegroundColor Yellow
if (Test-Path -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\INSTALL.md") {
    Write-Host "   ✓ INSTALL.md 文件存在" -ForegroundColor Green
} else {
    Write-Host "   ✗ INSTALL.md 文件不存在" -ForegroundColor Red
}

# 检查skill文件格式
Write-Host "4. 检查skill文件格式..." -ForegroundColor Yellow
$firstLines = Get-Content -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md" -Head 5
if ($firstLines -match "^---") {
    Write-Host "   ✓ SKILL.md 格式正确" -ForegroundColor Green
} else {
    Write-Host "   ✗ SKILL.md 格式错误" -ForegroundColor Red
}

# 检查name字段
Write-Host "5. 检查name字段..." -ForegroundColor Yellow
$nameLines = Get-Content -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md" -Head 10
if ($nameLines -match "^name: fnos") {
    Write-Host "   ✓ name字段正确" -ForegroundColor Green
} else {
    Write-Host "   ✗ name字段错误" -ForegroundColor Red
}

# 检查description字段
Write-Host "6. 检查description字段..." -ForegroundColor Yellow
$descLines = Get-Content -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md" -Head 10
if ($descLines -match "^description:") {
    Write-Host "   ✓ description字段存在" -ForegroundColor Green
} else {
    Write-Host "   ✗ description字段不存在" -ForegroundColor Red
}

Write-Host ""
Write-Host "=== 测试完成 ===" -ForegroundColor Green
Write-Host ""
Write-Host "下一步：" -ForegroundColor Yellow
Write-Host "1. 重启opencode使skill生效"
Write-Host "2. 在opencode中测试skill加载"
Write-Host "3. 执行飞牛相关操作验证skill功能"