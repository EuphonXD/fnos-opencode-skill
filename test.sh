#!/bin/bash

# FnOS Skill 娴嬭瘯鑴氭湰
# 鐢ㄤ簬楠岃瘉skill鏄惁姝ｇ‘瀹夎鍜岄厤缃?
echo "=== FnOS Skill 娴嬭瘯 ==="
echo ""

# 妫€鏌kill鏂囦欢鏄惁瀛樺湪
echo "1. 妫€鏌kill鏂囦欢..."
if [ -f ~/.config/opencode/skills/fnos/SKILL.md ]; then
    echo "   鉁?SKILL.md 鏂囦欢瀛樺湪"
else
    echo "   鉁?SKILL.md 鏂囦欢涓嶅瓨鍦?
    exit 1
fi

# 妫€鏌EADME鏂囦欢
echo "2. 妫€鏌EADME鏂囦欢..."
if [ -f ~/.config/opencode/skills/fnos/README.md ]; then
    echo "   鉁?README.md 鏂囦欢瀛樺湪"
else
    echo "   鉁?README.md 鏂囦欢涓嶅瓨鍦?
fi

# 妫€鏌NSTALL鏂囦欢
echo "3. 妫€鏌NSTALL鏂囦欢..."
if [ -f ~/.config/opencode/skills/fnos/INSTALL.md ]; then
    echo "   鉁?INSTALL.md 鏂囦欢瀛樺湪"
else
    echo "   鉁?INSTALL.md 鏂囦欢涓嶅瓨鍦?
fi

# 妫€鏌kill鏂囦欢鏍煎紡
echo "4. 妫€鏌kill鏂囦欢鏍煎紡..."
if head -n 5 ~/.config/opencode/skills/fnos/SKILL.md | grep -q "^---"; then
    echo "   鉁?SKILL.md 鏍煎紡姝ｇ‘"
else
    echo "   鉁?SKILL.md 鏍煎紡閿欒"
fi

# 妫€鏌ame瀛楁
echo "5. 妫€鏌ame瀛楁..."
if head -n 10 ~/.config/opencode/skills/fnos/SKILL.md | grep -q "^name: fnos"; then
    echo "   鉁?name瀛楁姝ｇ‘"
else
    echo "   鉁?name瀛楁閿欒"
fi

# 妫€鏌escription瀛楁
echo "6. 妫€鏌escription瀛楁..."
if head -n 10 ~/.config/opencode/skills/fnos/SKILL.md | grep -q "^description:"; then
    echo "   鉁?description瀛楁瀛樺湪"
else
    echo "   鉁?description瀛楁涓嶅瓨鍦?
fi

echo ""
echo "=== 娴嬭瘯瀹屾垚 ==="
echo ""
echo "涓嬩竴姝ワ細"
echo "1. 閲嶅惎opencode浣縮kill鐢熸晥"
echo "2. 鍦╫pencode涓祴璇晄kill鍔犺浇"
echo "3. 鎵ц椋炵墰鐩稿叧鎿嶄綔楠岃瘉skill鍔熻兘"