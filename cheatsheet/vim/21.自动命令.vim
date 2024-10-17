" 
" 自动命令
"       :autocmd [group] {events} {file-pattern} [<buffer>] [++nested] {command}
"           event:
"               Buffers:
"                   读: BufReadPre BufRead BufReadPost
"                   写: BufWritePre BufWrite BufWritePost
"                   窗口显示: BufWinEnter BufWinLeave
"                   交互: BufEnter  BufLeave
"                   生命周期: BufAdd BufDelete BufNewFile
"               Files:
"                   读: FileReadPre FileReadPost FileReadCmd
"                   写: FileWritePre FileWritePost FileWriteCmd
"                       FileAppendPre FileAppendPost FileAppendCmd
"               Commandline:
"                   交互: CmdlineEnter CmdlineLeave
"               Cursor:
"                   CursorHold: 用户有一段时间没输入
"                   CursorHoldI: 插入模式下, 用户有一段时间没输入
"                   CursorMove: 移动光标
"                   CursorMoveI: 插入模式下,  移动光标
"               Text:
"                   TextChanged TextChangedI
"               Tab:
"                   TabNew TabChanged TabEnter TabLeave TabClosed
"               Source:
"                   SourcePre SourcePost
"               Win:
"                   WinEnter WinLeave WinNew WinClosed
"               Vim:
"                   VimEnter  VimLeave
"           pattern:
"               *: 匹配所有
"           <buffer>:
"               当前缓冲区
"           command:
"               <sfile>: 命令作用文件名
" 
" augroup vimrc
"     " 清除 vimcrc 组全部的的自动命令
"     autocmd!
"     autocmd BufNewFile,BufRead *.html so <sfile>:h/html.vim
" augroup END
" 
" vim9script
" autocmd_add({
"       replace: true,
"       group: 'DemoGroup',
"       event: 'BufEnter',
"       pattern: '*.txt',
"       cmd: 'call DemoBufEnter()'
" })
" 