Output fastfetch.gif

Set FontSize 16
Set Width 1200
Set Height 600
Set Padding 20
Set WindowBar Colorful
Set Theme "Catppuccin Macchiato"

# ==========================================
# 幕后准备阶段 (这部分隐藏，不会被录进 GIF)
# ==========================================
Hide

# 1. 强行进入 fish 环境，找回你的 wzy 提示符
Type "fish"
Enter
Sleep 500ms

# 2. 依然是在后台静默捕获带颜色的真实输出
Type "set ff_output (unbuffer -p fastfetch | string collect)"
Enter
Sleep 2s

# 3. 核心黑魔法：在当前 fish 环境里，临时造一个假的 fastfetch 函数！
# 当后面你在屏幕上敲 fastfetch 时，其实调用的是这段打字机代码。
Type "function fastfetch; for char in (string split '' $ff_output); echo -n $char; sleep 0.002; end; end"
Enter
Sleep 500ms

# 4. 清理案发现场，给你一个干干净净的原始终端准备开拍
Type "clear"
Enter
Sleep 500ms

# ==========================================
# 正式开机录制 (好戏开场！)
# ==========================================
Show

# 先给观众留半秒钟看一眼你极客范儿的终端提示符
Sleep 500ms

# 模拟你亲手敲击命令的过程
Type "fastfetch"
Sleep 500ms
Enter

# 此时，带有颜色的流式输出开始如瀑布般倾泻！
# 流式输出本身需要几秒钟，再加上为你预留的 8 秒观赏配置的时间，总共等待 12 秒
Sleep 12s
