menu ( title = '开发工具' image = icon.development ) {
    item ( title = '批处理执行' image = icon.bat command = 'cmd.exe' arguments = '/k PUSHD "@sel.dir" && "@sel.path" && exit' where = sel.file.ext == '.bat' admin = key.shift()  separator = 'after' )
    item ( title = 'GVim' image command = 'gvim.exe' arguments = '"@sel.dir"' type = 'file')
    item ( title = 'VS Code 打开当前目录' image command = 'code.exe' arguments = '"@sel.dir"' )
    item ( title = 'IntellJ 打开当前目录' image command = 'idea64.exe' arguments = '"@sel.dir"' )
    item ( title = 'CMD 打开当前目录' image command = 'cmd.exe' arguments = '/k PUSHD "@sel.dir"' admin = key.shift() )
    separator

    item ( title = 'VS Code' image command = 'code.exe' )
    item ( title = 'IntellJ' image command = 'idea64.exe' )
    item ( title = 'MSYS2' image = icon.msys2 command = 'WindowsTerminal.exe' )
    item (title = '任务管理器' image command = 'taskmgr.exe' )
    separator
}