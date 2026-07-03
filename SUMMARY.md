# FnOS Skill 鎬荤粨

## 宸插畬鎴愮殑宸ヤ綔

鎴戝凡缁忔垚鍔熶负椋炵墰NAS鍒涘缓浜嗕竴涓猳pencode skill锛屽寘鍚互涓嬫枃浠讹細

### 1. 涓昏skill鏂囦欢
- **SKILL.md** (13.6KB) - 涓昏鐨剆kill鏂囦欢锛屽寘鍚畬鏁寸殑椋炵墰NAS鎿嶄綔鎸囧崡

### 2. 鏂囨。鏂囦欢
- **README.md** (2.9KB) - 浣跨敤璇存槑鍜屽姛鑳芥杩?- **INSTALL.md** (2.8KB) - 璇︾粏鐨勫畨瑁呭拰閰嶇疆璇存槑

### 3. 娴嬭瘯鑴氭湰
- **test.sh** (1.6KB) - Linux/macOS娴嬭瘯鑴氭湰
- **test.ps1** (2.5KB) - Windows PowerShell娴嬭瘯鑴氭湰

## Skill鍔熻兘

### 涓昏鐗规€?1. **绯荤粺绠＄悊** - 椋炵墰NAS绯荤粺淇℃伅鏌ヨ鍜岄厤缃?2. **Docker绠＄悊** - 瀹瑰櫒銆侀暅鍍忋€佺綉缁滅鐞?3. **瀛樺偍绠＄悊** - 鍗枫€佺鐩樸€佹枃浠剁郴缁熸搷浣?4. **缃戠粶閰嶇疆** - 缃戠粶鎺ュ彛銆侀槻鐏銆丏NS閰嶇疆
5. **鏁呴殰鎺掗櫎** - 甯歌闂璇婃柇鍜岃В鍐虫柟妗?
### 鍙俊鏉ユ簮闆嗘垚
1. **椋炵墰寮€鍙戣€呭紑鏀惧钩鍙?(FNOSP)** - https://github.com/FNOSP
2. **椋炵墰甯姪涓績** - https://help.fnnas.com/
3. **椋炵墰绀惧尯璁哄潧** - https://club.fnnas.com/

### 寮€鍙戝伐浣滄祦
1. **搴旂敤寮€鍙戝伐浣滄祦** - 浠庡紑鍙戝埌閮ㄧ讲鐨勫畬鏁存祦绋?2. **Docker閮ㄧ讲宸ヤ綔娴?* - 瀹瑰櫒鍖栧簲鐢ㄩ儴缃?3. **瀛樺偍绠＄悊宸ヤ綔娴?* - 瀛樺偍鍗烽厤缃拰绠＄悊
4. **澶囦唤鎭㈠宸ヤ綔娴?* - 绯荤粺澶囦唤鍜岀伨闅炬仮澶?5. **鐩戞帶鏁呴殰鎺掗櫎宸ヤ綔娴?* - 绯荤粺鐩戞帶鍜岄棶棰樿瘖鏂?
## 瀹夎浣嶇疆

```
~/.config/opencode/skills/fnos/
鈹溾攢鈹€ SKILL.md      # 涓昏skill鏂囦欢
鈹溾攢鈹€ README.md     # 浣跨敤璇存槑
鈹溾攢鈹€ INSTALL.md    # 瀹夎璇存槑
鈹溾攢鈹€ test.sh       # Linux娴嬭瘯鑴氭湰
鈹斺攢鈹€ test.ps1      # Windows娴嬭瘯鑴氭湰
```

## 浣跨敤鏂规硶

### 1. 鑷姩鍔犺浇
skill浼氬湪浠ヤ笅鎯呭喌鑷姩鍔犺浇锛?- 鎵ц椋炵墰NAS鐩稿叧鎿嶄綔鏃?- 绠＄悊Docker瀹瑰櫒鏃?- 鎿嶄綔瀛樺偍鍗锋椂
- 閰嶇疆缃戠粶鏃?- 鎺掓煡绯荤粺闂鏃?
### 2. 鎵嬪姩鍔犺浇
鍦╫pencode涓紝鍙互浣跨敤浠ヤ笅鍛戒护鎵嬪姩鍔犺浇skill锛?```
浣跨敤 fnos skill
```

### 3. 娴嬭瘯skill
```bash
# Linux/macOS
bash ~/.config/opencode/skills/fnos/test.sh

# Windows PowerShell
powershell -ExecutionPolicy Bypass -File ~/.config/opencode/skills/fnos/test.ps1
```

## 涓昏鍛戒护

### 绯荤粺淇℃伅
```bash
cat /etc/fnos-version    # 椋炵墰鐗堟湰
df -h                    # 纾佺洏绌洪棿
free -h                  # 鍐呭瓨浣跨敤
```

### Docker绠＄悊
```bash
docker ps                # 鍒楀嚭瀹瑰櫒
docker logs <container>  # 鏌ョ湅鏃ュ織
docker exec -it <container> /bin/bash  # 杩涘叆瀹瑰櫒
```

### 瀛樺偍绠＄悊
```bash
ls -la /vol1/            # 鏌ョ湅涓诲瓨鍌?du -sh /vol*/*           # 妫€鏌ヤ娇鐢ㄩ噺
mount | grep /vol*       # 鏌ョ湅鎸傝浇
```

### 缃戠粶閰嶇疆
```bash
ip addr show             # 缃戠粶鎺ュ彛
netstat -tuln            # 寮€鏀剧鍙?iptables -L              # 闃茬伀澧欒鍒?```

## 鏈€浣冲疄璺?
### 瀹夊叏鎬?1. 瀹氭湡鏇存柊绯荤粺鍜孌ocker闀滃儚
2. 浣跨敤寮哄瘑鐮佸拰瀵嗛挜璁よ瘉
3. 閰嶇疆闃茬伀澧欒鍒?4. 鍚敤鏁版嵁鍔犲瘑

### 鎬ц兘浼樺寲
1. 璁剧疆瀹瑰櫒璧勬簮闄愬埗
2. 浣跨敤SSD瀛樺偍
3. 鐩戞帶绯荤粺璧勬簮
4. 浼樺寲缃戠粶閰嶇疆

### 寮€鍙戞祦绋?1. 鍦ㄥ紑鍙戠幆澧冩祴璇?2. 浣跨敤鐗堟湰鎺у埗
3. 缂栧啓娴嬭瘯鐢ㄤ緥
4. 鏂囨。鍖栭厤缃?
## 鏁呴殰鎺掗櫎

### 甯歌闂
1. **瀹瑰櫒鏃犳硶鍚姩** - 妫€鏌ユ棩蹇楀拰鍗锋寕杞?2. **瀛樺偍鏉冮檺闂** - 妫€鏌ョ敤鎴?缁勬槧灏?3. **缃戠粶杩炴帴闂** - 妫€鏌ョ綉缁滈厤缃拰绔彛鏄犲皠

### 鑾峰彇甯姪
1. 鎼滅储瀹樻柟鏂囨。锛歨ttps://help.fnnas.com/?search=鍏抽敭璇?2. 鏌ラ槄绀惧尯璁哄潧锛歨ttps://club.fnnas.com/
3. 妫€鏌NOSP GitHub锛歨ttps://github.com/FNOSP

## 鏇存柊鍜岀淮鎶?
### 鏇存柊skill
缂栬緫浠ヤ笅鏂囦欢锛?```
~/.config/opencode/skills/fnos/SKILL.md
```

鏇存柊鍚庨渶瑕侀噸鍚痮pencode浣挎洿鏀圭敓鏁堛€?
### 鍗歌浇skill
鍒犻櫎浠ヤ笅鐩綍锛?```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 閰嶇疆

### 鑷畾涔塻kill璺緞
濡傛灉闇€瑕佸皢skill鏀惧湪鍏朵粬浣嶇疆锛屽彲浠ュ湪 opencode.json 涓厤缃細
```json
{
  "skills": {
    "paths": ["~/.config/opencode/skills"]
  }
}
```

### 绂佺敤skill
濡傛灉闇€瑕佺鐢ㄦskill锛屽彲浠ラ噸鍛藉悕鎴栧垹闄わ細
```
~/.config/opencode/skills/fnos/SKILL.md
```

## 璐＄尞

瑕佹敼杩涙skill锛?1. 鍙傝€冨畼鏂规枃妗ｉ獙璇佷俊鎭?2. 鍦ㄥ畨鍏ㄧ幆澧冧腑娴嬭瘯鍛戒护
3. 鏂囨。鍖栭鐗涚壒瀹氳€冭檻
4. 鍖呭惈鏁呴殰鎺掗櫎鎻愮ず

## 涓嬩竴姝?
1. **閲嶅惎opencode** - 浣縮kill鐢熸晥
2. **娴嬭瘯skill** - 楠岃瘉鍔熻兘姝ｅ父
3. **浣跨敤skill** - 鎵ц椋炵墰NAS鎿嶄綔
4. **鍙嶉鏀硅繘** - 鏍规嵁浣跨敤浣撻獙浼樺寲skill

## 鐩稿叧璧勬簮

- **Superpowers妗嗘灦**: https://github.com/obra/superpowers
- **椋炵墰寮€鍙戣€呭钩鍙?*: https://github.com/FNOSP
- **椋炵墰鏂囨。**: https://help.fnnas.com/
- **椋炵墰绀惧尯**: https://club.fnnas.com/

---

**娉ㄦ剰**: 姝kill涓撲负椋炵墰NAS绯荤粺璁捐锛屽湪鍏朵粬绯荤粺涓婂彲鑳芥棤娉曟甯稿伐浣溿€