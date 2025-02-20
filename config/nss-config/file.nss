menu ( title = '文件管理' image = icon.file) {
    $dt = sys.datetime("ymd")
    item ( title = '新建TXT' image = icon.txt command = io.file.create('@(dt).txt') )
    item ( title = '新建JSON' image = icon.json command = io.file.create('@(dt).json') )
    item ( title = '新建文件夹' image = icon.directory command = io.dir.create('@(dt)') )
    separator
    item ( title = '注册 @sel.file.ext GVim打开' image = icon.gvim command = 'cmd.exe' arguments = '/k REG ADD HKEY_CURRENT_USER\Software\Classes\@sel.file.ext  /t REG_SZ /d "GVIM" /f && exit' type = 'file' )
}