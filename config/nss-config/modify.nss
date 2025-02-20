// // modify items
// modify ( property-name = property-value ... )
// remove ( property-name = property-value ... )

remove ( where = str.contains(this.name, '百度网盘') )
remove ( where = str.contains(this.name, '自动备份该文件夹') )
remove ( where = str.contains(this.name, '同步至其它设备') )

remove ( where = str.contains(this.name, '上传到迅雷云盘') )

remove ( where = str.contains(this.name, '移动到 OneDrive') )

remove ( where = str.contains(this.name, '火绒安全软件') )

remove ( where = str.contains(this.name, 'PotPlay') )

remove ( where = str.contains(this.name, '在记事本中编辑') )

remove ( where = str.contains(this.name, '添加到收藏夹') )
remove ( where = str.contains(this.name, '播放到设备') )

remove ( where = str.contains(this.name, '共享') )

remove ( where = str.contains(this.name, '创建快捷方式') )

remove ( where = this.id == id.new )

remove ( where = this.id == id.open )
remove ( where = this.id == id.open_in_new_tab )
remove ( where = this.id == id.open_in_new_window )

remove ( where = this.id == id.copy_as_path)

remove ( where = this.id == id.include_in_library )

remove ( where = this.id == id.send_to )

remove ( where = this.id == id.restore_previous_versions )

remove ( where = this.id == id.pin_to_quick_access )
remove ( where = this.id == id.pin_to_start )
remove ( where = this.id == id.pin_to_taskbar )