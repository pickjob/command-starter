" 
" 操作命令:
"       字符:
"           c: 删除并插入
"           C: 删除到行尾进入插入模式
"           x  X: 删除光标下、前字符
"           J: 删除换行符
"           r{char}: 光标下字符替换成 {char} 字符
"       行:
"           y[N]y: 复制N行
"           d[N]d: 删除N行
"           c[N]c: 删除行并插入
"           >>  <<: 向右、向左缩进当前行
"       屏幕滚动:
"           <Ctrl-f>: 向前滚动一页
"           <Ctrl-b>: 向后滚动一页
"           <Ctrl-u>: 向前滚动半页
"           <Ctrl-d>: 向后滚动半页
"           zt: 当前行移动到屏幕顶端
"           zz: 当前行移动到屏幕中间
"           zb: 当前行移动到屏幕底端
"           zh: 右滚半个屏
"           zl: 左滚半个屏
"       折叠:
"           zo  zO: 打开折叠
"           zr  zR: 关闭折叠
"           zc  zC: 创建折叠
"       撤销、重做:
"           u: 撤销
"           <Ctrl-r>: 重做
"       标签页:
"           gT: 前一个标签页
"           gt: 下一个标签页
"           g<Tab>: 转到最近访问的标签页
"       窗口:
"           Ctrl-W hjkl: 左下上右
"           Ctrl-W tb: 上下
"           Ctrl-W HJKL: 窗口置于最左下上右
"           Ctrl-W + / -: 大小加一 / 减一
"       其他:
"           =: 自动格式化
"           zz: 保存退出
"           zq: 不保存退出
"       寄存器:
"           "": 默认无名寄存器
"           "小写字母: 覆盖原有内容
"           "大写字母: 追加原有内容
"           "_: 黑洞寄存器
"           "+: 系统剪贴板
"       Ex命令:
"           范围:
"               .: 当前行 
"               {number}: 行号
"               $: 文件的最后一行
"               %: 相当于 1,$ (整个文件)
"               N,/this line/: 从第 N 行到匹配当前光标后的一个 "this line" 为止的范围
"               N;/that line/: 从第 N 行到匹配第 N 行之后的一个 "that line" 为止的范围
"               \?: 前一个与前次搜索模式匹配的行
"               ?{pattern}[?]: 前一个匹配 {pattern} 的行 
"               /{pattern}[/]: 下一个匹配 {pattern} 的行
"               \/: 下一个与前次搜索模式匹配的行
"               \&: 下一个与前次替代模式匹配的行
"           占位符:
"               %: 被当前文件名取代
"               #n: 被第 n 个缓冲区的文件名取代
"               <cword>: 被当前光标下的单词代替
"               <cWORD>: 被当前光标下的字串代替
"               <cfile>: 被当前光标下的路径名代替
"               <afile>: 在执行自动命令时, 被所操作的缓冲区或用来读或写的文件的文件名取代
"               <abuf>: 在执行自动命令时, 被当前有效的缓冲区序号取代
"               <amatch>:  在执行自动命令时, 被激发自动命令的实际匹配代替
"               <sfile>: 执行 :source命令时, 正在被执行的文件名
"               <script>: 执行 :source  命令时, 执行文件的文件名
"               <slnum>: 执行 :source  命令时, 为行号
"               <sflnum>: 执行脚本时，替换为行号
"   
"               :p: 给出文件名的全路径
"               :~: 如果可能，路径名缩减为基于主目录的相对路径
"               :.: 如果可能，路径名缩减为基于当前目录的相对路径
"               :h: 文件名的头部 (除去文件名的最后一部分以及路径分隔符)
"               :t: 文件名的尾部 (文件名的最后一部分)
"               :r: 文件名的根部 (除去最后的扩展名)
"               :e: 扩展名
"           编辑:
"               :[N]sp[lit] [++opt] [+cmd] {file}: 创建一个新的窗口并且开始编辑文件 {file}
"               :e[dit] [++opt] [+cmd] {file}: 编辑文件 {file}
"                   opt:
"                       fileformat: unix dos mac
"                       encoding:
"                   cmd:
"                       +: 从最后一行开始
"                       +{num}: 从第 {num} 行开始
"                       +/{pat}: 从匹配 {pat} 的第一行开始
"                       +{command}: 打开新文件以后执行 {command}
"               :[count]prev[ious] [count] [++opt] [+cmd] | :[count]N[ext] [count] [++opt] [+cmd]: 编辑向前第 [count] 个文件
"               :[count]n[ext] [++opt] [+cmd]: 编辑向后第 [count] 个文件
"               :fir[st][!] [++opt] [+cmd] | :rew[ind] [++opt] [+cmd]: 开始编辑参数列表的第一个文件
"               :la[st] [++opt] [+cmd]: 开始编辑参数列表的最后一个文件
"           保存:
"               :w[rite] [++opt]: 将整个缓冲区写入当前文件
"               :[range]w[rite] [++opt] {file}: 将指定行写入文件 {file}
"               :[range]up[date][!] [++opt] [>>] [file]: write类似, 但是只有修改才更新
"               :wa[ll]: 保存所有已修改的缓冲区
"               :sav[eas][!] [++opt] {file}: 用文件名 {file} 保存当前缓冲区
"           保存后编辑:
"               :[count]wn[ext] [++opt]: 写回当前文件并开始编辑向后第 [count] 个文件
"               :[count]wp[revious][!] [++opt] [file] | :[count]wN[ext][!] [++opt] [file] 
"               :[count]wn[ext] [++opt] {file}: 写入当前文件到 {file} 并开始编辑向后第 [count] 个文件
"           文件:
"               :f[ile]: 显示当前文件名
"               :f[ile][!] {name}: 设置当前文件名为 {name}
"               :files: 列出当前已知的文件名
"           参数(启动多个文件):
"               :ar[gs]: 显示参数列表, 当前文件以方括号表示
"               :[count]argu[ment] [count] [++opt] [+cmd]: 编辑参数列表里的第 [count] 个文件
"               :ar[gs] [++opt] [+cmd] {arglist}: 定义 {arglist} 为新的参数列表并编辑其中的第一个
"               :[count]arge[dit][!] [++opt] [+cmd] {name} ..: 将一或多个 {name} 加到参数列表里, 并编辑之
"               :[count]arga[dd] {name} ..: 将若干文件名 {name} 等加到参数列表里
"               :argded[upe]: 删除参数列表里的重复文件名
"               :argd[elete] {pattern} ..: 从参数列表里删除匹配 {pattern} (可有多个) 的文件
"               :[range]argd[elete]: 从参数列表里删除 [range] 范围里的文件
"           缓冲区:
"               :buffers[!] [flags]: 列出缓冲区列表里的所有文件
"                   %: 当前窗口里的缓冲区
"                   =: 只读缓冲区
"                   -: 不可更改的缓冲区
"                   +: 已经更改的缓冲区
"               :[N]b[uffer][!] [+cmd] [N]: 编辑缓冲区列表中第 [N] 个缓冲区
"               :[N]b[uffer][!] [+cmd] {bufname}: 编辑缓冲区列表中 {bufname} 对应的缓冲区
"               :[N]bp[revious][!] [+cmd] [N]: 至缓冲区列表往前第 [N] 个缓冲区
"               :[N]bn[ext][!] [+cmd] [N]: 至缓冲区列表里往后第 [N] 个缓冲区
"           标签页:
"               :tabs: 列出标签页和它们包含的窗口
"               :[count]tabe[dit] [++opt] [+cmd] {file} | :[count]tabnew [++opt] [+cmd] {file}: 打开新标签页并编辑 {file}
"               :[count]tab {cmd}: 执行 {cmd}, 如果它打开新窗口，使用新标签页代替
"               :tabp[revious]: 转到前一个标签页
"               :tabn[ext]: 转到下一个标签
"               :tabc[lose][!]: 关闭当前标签页
"               :tabo[nly][!]: 关闭所有其它的标签页
"           窗口:
"               :[N]sp[lit] [++opt] [+cmd] [file]: 水平分割
"               :[N]vs[plit] [++opt] [+cmd] [file]: 垂直分割
"               :[count]winc[md] {arg}: 窗口命令
"                   hjkl: 左下上右
"                   t b: 上下
"                   HJKL: 窗口置于最左下上右
"                   + / -: 大小加一 / 减一
"           排版:
"               :[range]ce[nter] [width]: 居中对齐
"               :[range]le[ft] [indent]: 左对齐行
"               :[range]ri[ght] [width]: 右对齐
"           重定向:
"               :redi[r] >> {file}: 重定向消息到文件
"               :redi[r] @+>: 重定向消息到剪贴板
"               :redi[r] => {var}: 重定向消息到变量
"               :redi[r] =>> {var}: 附加消息到已有的变量
"               :redi[r] END: 结束消息的重定向
"           外部命令:
"               :sh[ell]: 启动一个外壳
"               :!{cmd}: 在外壳里执行 {cmd} 命令
"           退出:
"               :q[uit]: 退出当前窗口
"               :q[uit]!: 退出不保存
"               :qa[ll]: 退出 Vim
"               :wq [++opt]: 写回当前的文件并且关闭窗口
"               :wq [++opt] {file}: 写入到 {file} 并且关闭窗口
"               
"           其他:
"               :sil[ent][!] {command}: 不回显
"               :[N]sl[eep] [N][m]: 睡眠[N]秒