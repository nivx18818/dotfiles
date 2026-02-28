import 'imports/images.nss'
import 'imports/theme.nss'
import 'imports/modify.nss'
import 'imports/terminal.nss'
import 'imports/goto.nss'
import 'imports/file-manage.nss'
import 'imports/develop.nss'
import 'imports/taskbar.nss'

settings {
	showdelay = 0

  exclude {
    where = !process.is_explorer
  }

  tip {
    enabled = true
  }
}

menu(mode="multiple" title="Pin/Unpin" image=icon.pin) {
}

menu(mode="multiple" title=title.more_options image=icon.more_options) {
}
