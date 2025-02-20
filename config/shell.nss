settings {
    priority = 1
    showdelay = 200
    tip.enabled = true
    modify.remove.duplicate = 1
    exclude.where = !process.is_explorer
}

import 'nss-config/theme.nss'

// image declaration
import 'nss-config/images.nss'

// modify items
import 'nss-config/modify.nss'

// new items
import 'nss-config/new.nss'

separator

import 'nss-config/anywhere.nss'
import 'nss-config/development.nss'
import 'nss-config/file.nss'

separator

// Validation Properties
//      Where
//      Mode
//          none: 未选中
//          single: 单一对象选中
//          multi_single: 同一扩展多文件选中
//          multi_unique: 同一类型多对象选中
//          multiple: 选中
//      Type
//          File: 文件
//          Directory: 文件夹
//          Desktop: 桌面
//          Computer: 计算机
//          Taskbar: 任务栏
//          *: 任意类型
// Filter Properties
//      Find
// Menuitem Properties
//      Appearance
//          Title
//          Visibility
//              Hidden Normal Disable Static Label
//          Separator
//              None Before, Top After, Bottom Both
//          Image, Icon
//              null Inherit Cmd Glyph Color Path
//          Checked
//              0 1 2
//          Default
//          Tip
//      Location
//          Position
//              Auto Middle Top Bottom Integer
//          Expanded
//              True False
//          Column
//              True False
//          Keys
//          Parent, Menu
// Command Properties
//      Command
//      Arguments
//      Invoke
//          0, single: 单例(选中对象 @sel)
//          1, multiple: 多开(当前处理对象 @sel.path.quote)
//      Window
//          Hidden Show Visible Minimized Maximized
//      Directory
//      Admin
//          True False
//      Verb
//          null Open OpenAs RunAs Edit Explore Properties Print Find
//      Wait
//          True False
// Expressions
//      Variables
//          $variable-name = variable-value
//          String literal
//              var1 = "It's alright"
//              'windows dir path: @sys.dir'
//          Numeric literals
//              Decimal: 0, -9, 22
//              Hexadecimal: 0x7f, 0x2a, 0x521
//      Operators
//          + - * / %
//          == != < > <= >=
//          && || !
//          & | ^ ~ << >>
//          condition ? result1 : result2
// Functions
//      if
//          if(condition-expression)
//          if(condition-expression, true-expression)
//          if(condition-expression, true-expression, false-expression)
//      compare
//          equal(expression-1, expression-2): return exp1 == exp2
//          not(expression-1, expression-2): return exp1 != exp2
//          greater(expression-1, expression-2): return exp1 > exp2
//          less(expression-1, expression-2): return exp1 < exp2
//      length
//          length(expression)
//      indexof
//          indexof(expression[, default position])
//      null(expression)
//      char(numeric-expression)
//      quote(expression)
//      var(expression)
//      tohex(numeric-expression)
//      shl(shift-expression, additive-expression)
//      shr(shift-expression, additive-expression)
// Namespace
//      app
//          app.reload: 重新加载配置
//      command
//          command.copy_to_clipboard('string copy to clipboard')
//          command.sleep(milliseconds)
//          command.random(min value, max value)
//          command.find
//          command.move_to_folder
//          command.copy_to_folder
//          command.undo
//          command.redo
//          command.refresh
//          command.restart_explorer
//          command.select_all
//          command.select_none
//          command.invert_selection
//          command.toggle_desktop
//      io
//          io.copy(pathFrom, pathTo)
//          io.copy(pathFrom, pathTo, options) options: 1 = skip_existing, 2 = overwrite_existing, 4 = update_existing, 16 = recursive default = update_existing | recursive
//          io.move(oldPath, newPath)
//          io.rename(oldName, newName)
//          io.delete(path)
//          Directory Functions
//              io.directory.create(path)
//              io.directory.exists(path)
//              io.directory.exists(path1, path2, path3, ...)
//              io.directory.empty(path)
//              io.directory.empty(path1, path2, path3, ...)
//          File Functions
//              io.file.size(path)
//              io.file.exists(path)
//              io.file.exists(path1, path2, path3, ...)
//              io.file.create(path)
//              io.file.create(path, "Hello World!")
//              io.file.write(path, "Hello World!")
//              io.file.append(path, "Hello ")
//      msg
//          msg(text)
//          msg(text, title)
//          msg(text, title, flags)
//              icon
//                  msg.error msg.question msg.warning msg.info
//              button
//                  msg.ok msg.okcancel msg.yesnocancel msg.yesno
//              dialog box
//                  msg.applmodal msg.taskmodal
//              return value
//                  msg.idok / 1 msg.idcancel / 2 msg.idyes / 6 msg.idno or 7
//      path
//          path.currentdirectory
//          path.combine(path1, path2)
//          path.empty(path)
//          path.empty(path1, path2, ...)
//          path.exists(path)
//          path.exists(path1, path2, ...)
//          path.name(path)
//          path.location(path)
//          path.location.name(path)
//          path.root(path)
//          path.type(path) == type.file
//          path.file.name(path)
//          path.file.ext(path)
//          path.isfile(path)
//          path.isdirectory(path)
//          path.isexe(path)
//     process
//          process.handle
//          process.name
//          process.id
//          process.path
//          process.is_explorer
//          process.used
//      reg
//          reg.exists('HKCU\Control Panel\Desktop')
//          reg.get('HKCU\Control Panel\Desktop', "WallPaper")
//          reg.set('HKCU\Software\Nilesoft\Shell')
//          reg.delete('HKCU\Software\Nilesoft\Shell', 'test-auto')
//          reg.values('HKCU\Software\Nilesoft\Shell')
//      sel(被选中选项)
//          sel(quote=false, separator=' ')
//          sel.path
//          sel.path.length
//          sel.count
//          sel.curdir or sel.workdir
//          sel.file.title: 文件名
//          sel.file.ext: 扩展名
//          sel.file.name: 文件名 + 扩展名
//          sel.directory
//          sel.directory.name
//          sel.directory.length
//      str
//          str.get("Hello World!", 7)
//          str.set("Hello World!", 6, '-')
//          str.contains("Hello World!", 'World')
//          str.empty("")
//          str.start("Hello World!", "World!")
//          str.end("Hello World!", "World!")
//          str.equals("Hello World!", "Hello World!")
//          str.not("Hello World!", "Hello-World!")
//          str.length("Hello World!")
//          str.trim(" Hello World! ")
//          str.find("Hello World!", "lo")
//          str.findlast("Hello World!", "Wor")
//          str.lower("Hello World!")
//          str.upper("Hello World!")
//          str.left("Hello World!", 5)
//          str.right("Hello World!", 5)
//          str.sub("Hello World!", 0, 5)
//          str.remove("Hello World!", 5, 1)
//          str.replace("Hello World!", "World", "User")
//      sys
//          sys.var('WINDIR')
//          sys.datetime.date sys.datetime.time
//      this
//          this.type: item = 0, menu = 1, separator = 2
//          this.checked
//          this.pos
//          this.disabled
//          this.sys
//          this.title
//          this.id
//          this.count
//          this.length
//      user
//          user.home
//          user.appdata
//          user.desktop
//      windows
//          window.is_taskbar
//          window.is_desktop
//          window.is_explorer                        
//      clipboard
//          clipboard.get
//          clipboard.set("Hello world!")
//          clipboard.is_empty
//          clipboard.empty
//      input
//          input("Title", "Prompt")
//      regex
//          regex.match(str, pattern)
//          regex.matches(str, pattern)
//          regex.replace(str, pattern, "new str")
//      image
//          image.svg('<svg viewBox="0 0 100 100"><path fill="red" d="M0 0 L 100 0 L50 100 Z"/></svg>')
//      id(id.xx id.xx.title, id.xx.icon)
//          id.add_a_network_location
//          id.adjust_date_time
//          id.align_icons_to_grid
//          id.arrange_by
//          id.auto_arrange_icons
//          id.autoplay
//          id.cancel
//          id.cascade_windows
//          id.cast_to_device
//          id.cleanup
//          id.collapse
//          id.collapse_all_groups
//          id.collapse_group
//          id.command_prompt
//          id.compressed
//          id.configure
//          id.content
//          id.control_panel
//          id.copy
//          id.copy_as_path
//          id.copy_here
//          id.copy_path
//          id.copy_to
//          id.copy_to_folder
//          id.cortana
//          id.create_shortcut
//          id.create_shortcuts
//          id.create_shortcuts_here
//          id.customize_notification_icons
//          id.customize_this_folder
//          id.cut
//          id.delete
//          id.desktop
//          id.details
//          id.device_manager
//          id.disconnect
//          id.disconnect_network_drive
//          id.display_settings
//          id.edit
//          id.eject
//          id.empty_recycle_bin
//          id.erase_this_disc
//          id.exit_explorer
//          id.expand
//          id.expand_all_groups
//          id.expand_group
//          id.expand_to_current_folder
//          id.extra_large_icons
//          id.extract_all
//          id.extract_to
//          id.file_explorer
//          id.folder_options
//          id.format
//          id.give_access_to
//          id.group_by
//          id.include_in_library
//          id.insert_unicode_control_character
//          id.install
//          id.large_icons
//          id.list
//          id.lock_all_taskbars
//          id.lock_the_taskbar
//          id.make_available_offline
//          id.make_available_online
//          id.manage
//          id.map_as_drive
//          id.map_network_drive
//          id.medium_icons
//          id.merge
//          id.more_options
//          id.mount
//          id.move_here
//          id.move_to
//          id.move_to_folder
//          id.new
//          id.new_folder
//          id.new_item
//          id.news_and_interests
//          id.next_desktop_background
//          id.open
//          id.open_as_portable
//          id.open_autoplay
//          id.open_command_prompt
//          id.open_command_window_here
//          id.open_file_location
//          id.open_folder_location
//          id.open_in_new_process
//          id.open_in_new_tab
//          id.open_in_new_window
//          id.open_new_tab
//          id.open_new_window
//          id.open_powershell_window_here
//          id.open_windows_powershell
//          id.open_with
//          id.options
//          id.paste
//          id.paste_shortcut
//          id.personalize
//          id.pin_current_folder_to_quick_access
//          id.pin_to_quick_access
//          id.pin_to_start
//          id.pin_to_taskbar
//          id.play
//          id.play_with_windows_media_player
//          id.power_options
//          id.preview
//          id.print
//          id.properties
//          id.reconversion
//          id.redo
//          id.refresh
//          id.remove_from_quick_access
//          id.remove_properties
//          id.rename
//          id.restore
//          id.restore_default_libraries
//          id.restore_previous_versions
//          id.rotate_left
//          id.rotate_right
//          id.run
//          id.run_as_administrator
//          id.run_as_another_user
//          id.search
//          id.select_all
//          id.send_to
//          id.set_as_desktop_background
//          id.set_as_desktop_wallpaper
//          id.settings
//          id.share
//          id.share_with
//          id.shield
//          id.show_all_folders
//          id.show_cortana_button
//          id.show_desktop_icons
//          id.show_file_extensions
//          id.show_hidden_files
//          id.show_libraries
//          id.show_network
//          id.show_pen_button
//          id.show_people_on_the_taskbar
//          id.show_task_view_button
//          id.show_the_desktop
//          id.show_this_pc
//          id.show_touch_keyboard_button
//          id.show_touchpad_button
//          id.show_windows_side_by_side
//          id.show_windows_stacked
//          id.small_icons
//          id.sort_by
//          id.store
//          id.task_manager
//          id.taskbar_settings
//          id.tiles
//          id.troubleshoot_compatibility
//          id.turn_off_bitlocker
//          id.turn_on_bitlocker
//          id.undo
//          id.unpin_from_quick_access
//          id.unpin_from_start
//          id.unpin_from_taskbar
//          id.view