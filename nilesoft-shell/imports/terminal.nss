menu(
	type='*'
	where=(sel.count || wnd.is_edit)
	title=title.terminal
	sep='top'
	image=icon.run_with_powershell
) {
	$tip_run_admin = ["\xE1A7 Press SHIFT key to run " + this.title + " as administrator", tip.warning, 1.0]
	$has_admin = key.shift() || key.rbutton()
	$wezterm_lnk = user.startmenu + '\Programs\Scoop Apps\WezTerm.lnk'

	item(
		where=package.exists("WindowsTerminal")
		title=title.Windows_Terminal
		tip=tip_run_admin
		admin=has_admin
		image='@package.path("WindowsTerminal")\WindowsTerminal.exe'
		cmd='wt.exe'
		arg='-d "@sel.path\."'
	)

	item(
		where=path.isfile(wezterm_lnk)
		title="Wezterm"
		image=path.lnk(wezterm_lnk)
		cmd='wezterm.exe'
		arg='-d "@sel.path\."'
	)
}
