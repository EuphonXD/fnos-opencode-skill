# FnOS Skill for opencode

杩欎釜 skill 涓哄湪椋炵墰NAS涓婅繍琛岀殑 opencode 鎻愪緵绯荤粺绠＄悊銆丏ocker鎿嶄綔銆佸瓨鍌ㄧ鐞嗗拰鏁呴殰鎺掗櫎鎸囧銆?
## 瀹夎

skill 宸插畨瑁呭湪浠ヤ笅浣嶇疆锛?```
~/.config/opencode/skills/fnos/SKILL.md
```

## 浣跨敤鏂规硶

### 鑷姩鍔犺浇
skill 浼氬湪浠ヤ笅鎯呭喌鑷姩鍔犺浇锛?- 鎵ц椋炵墰NAS鐩稿叧鎿嶄綔鏃?- 澶勭悊Docker瀹瑰櫒绠＄悊鏃?- 杩涜瀛樺偍鍗锋搷浣滄椂
- 閰嶇疆缃戠粶鍜屾湇鍔℃椂
- 鎺掓煡绯荤粺闂鏃?
### 鎵嬪姩鍔犺浇
鍦?opencode 涓紝鍙互浣跨敤浠ヤ笅鍛戒护鎵嬪姩鍔犺浇skill锛?```
浣跨敤 fnos skill
```

## 涓昏鍔熻兘

### 1. 绯荤粺淇℃伅鏌ヨ
```bash
# 鑾峰彇椋炵墰鐗堟湰淇℃伅
cat /etc/fnos-version

# 妫€鏌ョ郴缁熻祫婧?df -h
free -h
```

### 2. Docker瀹瑰櫒绠＄悊
```bash
# 鍒楀嚭瀹瑰櫒
docker ps

# 绠＄悊瀹瑰櫒
docker start/stop/restart <container>
```

### 3. 瀛樺偍绠＄悊
```bash
# 妫€鏌ュ瓨鍌ㄧ┖闂?df -h
du -sh /vol*/*

# 绠＄悊鍗?ls -la /vol1/
```

### 4. 缃戠粶閰嶇疆
```bash
# 妫€鏌ョ綉缁?ip addr show
netstat -tuln
```

## 鍙俊鏉ユ簮

鎵ц椋炵墰鎿嶄綔鏃讹紝璇蜂紭鍏堝弬鑰冿細

1. **椋炵墰寮€鍙戣€呭紑鏀惧钩鍙?(FNOSP)**
   - https://github.com/FNOSP
   - 鐢ㄩ€旓細API鏂囨。銆佸紑鍙戣€呮寚鍗?
2. **椋炵墰甯姪涓績**
   - https://help.fnnas.com/
   - 鐢ㄩ€旓細瀹樻柟鏂囨。銆佸姛鑳芥寚鍗?
3. **椋炵墰绀惧尯璁哄潧**
   - https://club.fnnas.com/
   - 鐢ㄩ€旓細鏁呴殰鎺掗櫎銆佺ぞ鍖鸿В鍐虫柟妗?
### 鎼滅储鏂囨。
```bash
# 瀹樻柟鏂囨。鎼滅储
https://help.fnnas.com/?search=鍏抽敭璇?
# 绀惧尯鎼滅储
https://club.fnnas.com/search.php?mod=forum&searchid=65&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=鍏抽敭璇?```

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
1. **瀹瑰櫒鏃犳硶鍚姩**
   - 妫€鏌ユ棩蹇楋細`docker logs <container>`
   - 楠岃瘉鍗锋寕杞?
2. **瀛樺偍鏉冮檺闂**
   - 妫€鏌ョ敤鎴?缁勬槧灏?   - 楠岃瘉鏂囦欢鏉冮檺

3. **缃戠粶杩炴帴闂**
   - 妫€鏌ョ綉缁滈厤缃?   - 楠岃瘉绔彛鏄犲皠

### 鑾峰彇甯姪
1. 鎼滅储瀹樻柟鏂囨。
2. 鏌ラ槄绀惧尯璁哄潧
3. 妫€鏌NOSP GitHub

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

## 鏇存柊

瑕佹洿鏂皊kill锛岀紪杈戜互涓嬫枃浠讹細
```
~/.config/opencode/skills/fnos/SKILL.md
```

鏇存柊鍚庨渶瑕侀噸鍚痮pencode浣挎洿鏀圭敓鏁堛€?
## 璐＄尞

瑕佹敼杩涙skill锛?1. 鍙傝€冨畼鏂规枃妗ｉ獙璇佷俊鎭?2. 鍦ㄥ畨鍏ㄧ幆澧冧腑娴嬭瘯鍛戒护
3. 鏂囨。鍖栭鐗涚壒瀹氳€冭檻
4. 鍖呭惈鏁呴殰鎺掗櫎鎻愮ず