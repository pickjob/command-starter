menu ( title = '任意门' image = icon.global ) {
    item ( title = 'Flush Move' image = icon.trans command = if(!io.directory.exists(path.combine(path.root(sel.directory), '/2')), io.directory.create(path.combine(path.root(sel.directory), '/2'))) && io.move(sel.path, path.combine(path.root(sel.directory), '/2/', sel.file.name)) where = sel.file.ext == '.mp4'  or sel.file.ext == '.mkv' or sel.file.ext == '.avi' separator = 'after' )
    item ( title = 'Repository' image = icon.repository command = sys.var('REPOSITORY'))
    item ( title = 'Repository_BACKUP' image = icon.backup command = sys.var('REPOSITORY_BACKUP') )
    item ( title = '用户目录' image = icon.user command = user.dir )
    separator
    item ( title = '跳转桌面' image = icon.desktop command = command.toggle_desktop )
    separator
}