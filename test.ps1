# FnOS Skill 娴嬭瘯鑴氭湰 (Windows PowerShell)
# 鐢ㄤ簬楠岃瘉skill鏄惁姝ｇ‘瀹夎鍜岄厤缃?
Write-Host "=== FnOS Skill 娴嬭瘯 ===" -ForegroundColor Green
Write-Host ""

# 妫€鏌kill鏂囦欢鏄惁瀛樺湪
Write-Host "1. 妫€鏌kill鏂囦欢..." -ForegroundColor Yellow
if (Test-Path -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md") {
    Write-Host "   鉁?SKILL.md 鏂囦欢瀛樺湪" -ForegroundColor Green
} else {
    Write-Host "   鉁?SKILL.md 鏂囦欢涓嶅瓨鍦? -ForegroundColor Red
    exit 1
}

# 妫€鏌EADME鏂囦欢
Write-Host "2. 妫€鏌EADME鏂囦欢..." -ForegroundColor Yellow
if (Test-Path -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\README.md") {
    Write-Host "   鉁?README.md 鏂囦欢瀛樺湪" -ForegroundColor Green
} else {
    Write-Host "   鉁?README.md 鏂囦欢涓嶅瓨鍦? -ForegroundColor Red
}

# 妫€鏌NSTALL鏂囦欢
Write-Host "3. 妫€鏌NSTALL鏂囦欢..." -ForegroundColor Yellow
if (Test-Path -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\INSTALL.md") {
    Write-Host "   鉁?INSTALL.md 鏂囦欢瀛樺湪" -ForegroundColor Green
} else {
    Write-Host "   鉁?INSTALL.md 鏂囦欢涓嶅瓨鍦? -ForegroundColor Red
}

# 妫€鏌kill鏂囦欢鏍煎紡
Write-Host "4. 妫€鏌kill鏂囦欢鏍煎紡..." -ForegroundColor Yellow
$firstLines = Get-Content -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md" -Head 5
if ($firstLines -match "^---") {
    Write-Host "   鉁?SKILL.md 鏍煎紡姝ｇ‘" -ForegroundColor Green
} else {
    Write-Host "   鉁?SKILL.md 鏍煎紡閿欒" -ForegroundColor Red
}

# 妫€鏌ame瀛楁
Write-Host "5. 妫€鏌ame瀛楁..." -ForegroundColor Yellow
$nameLines = Get-Content -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md" -Head 10
if ($nameLines -match "^name: fnos") {
    Write-Host "   鉁?name瀛楁姝ｇ‘" -ForegroundColor Green
} else {
    Write-Host "   鉁?name瀛楁閿欒" -ForegroundColor Red
}

# 妫€鏌escription瀛楁
Write-Host "6. 妫€鏌escription瀛楁..." -ForegroundColor Yellow
$descLines = Get-Content -LiteralPath "$env:USERPROFILE\.config\opencode\skills\fnos\SKILL.md" -Head 10
if ($descLines -match "^description:") {
    Write-Host "   鉁?description瀛楁瀛樺湪" -ForegroundColor Green
} else {
    Write-Host "   鉁?description瀛楁涓嶅瓨鍦? -ForegroundColor Red
}

Write-Host ""
Write-Host "=== 娴嬭瘯瀹屾垚 ===" -ForegroundColor Green
Write-Host ""
Write-Host "涓嬩竴姝ワ細" -ForegroundColor Yellow
Write-Host "1. 閲嶅惎opencode浣縮kill鐢熸晥"
Write-Host "2. 鍦╫pencode涓祴璇晄kill鍔犺浇"
Write-Host "3. 鎵ц椋炵墰鐩稿叧鎿嶄綔楠岃瘉skill鍔熻兘"