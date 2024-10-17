" 
" 操作符、动作:
"       操作: 操作符(operator) + 动作(motion)
"       操作符(operator): 对文本进行修改
"           y: 复制(yank)
"           p: 粘贴(paste)
"           d: 删除(delete)
"           c: 删除后进入插入模式(change)
"           ~: 字符大小写转换
"           >: 右移
"           <: 左移
"        动作(motion): 移动光标
"           移动:
"               h j k l: 左下上右
"               - +: 上一行、下一行
"               0 ^ $: 行首、行首非空字符、行尾
"               H、M、L: 屏幕第一行、屏幕中间一行、屏幕最后一行
"               %: 跳转匹配
"               nG: 文件指定行
"               gg、G: 文件开头、文件末尾
"           文本对象(text-object):
"                w: Word (跳到下一个连续的非字符)
"                W: Word (跳到下一个连续的空白(\s)隔开的字符)
"                e: Word End (w 前一个字符)
"                E: Word End (W 前一个字符)
"                b: Word Back (w 反向)
"                B: Word Back (W 反向)
"                ): Sentence (w 扩展为句子)
"                (: Sentence Back (b 扩展为句子)
"                }: Paragraph (w 扩展为段落)
"                {: Paragraph Back (B 扩展为段落)
"                f{char}: 下一个出现char处
"                F{char}: 上一个出现char处