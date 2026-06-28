# Keyboards

> [!NOTE]
>
> Some Chinese vendors, including WOBKEY, have been listed by QMK for license violations related to incomplete source-code releases. The current list of offending vendors is available here: https://docs.qmk.fm/license_violations#offending-vendors.

## VIA Setup

To configure the keyboard using VIA:

1. Open https://usevia.app.
2. Navigate to **Settings**.
3. Enable **Show Design tab**.
4. Open the **Design** tab.
5. Click **Load** and select `definition.via.json`.
6. Switch to the **Configure** tab.
7. Open the **Save + Load** menu.
8. Click **Load** and select `layout.via.json`.

After loading both files, VIA will recognize the keyboard definition and restore the current layout configuration.

## Notes

- Most customization is performed through VIA.
- Advanced QMK features that require firmware compilation may not be available.
- Firmware source code for the Zen65 has not been publicly released at the time of writing.
- Future QMK compatibility depends on WOBKEY releasing the required source code and complying with QMK licensing requirements.

## Wobkey Zen65

- Although marketed as a "QMK/VIA" keyboard, the Zen65 does not ship with the full QMK source code needed for complete QMK support. In practice, it mainly relies on VIA configuration files and does not offer the same level of customization as fully open-source QMK boards.

- Sleeping time on different colors (press `Fn + Y` or `KbPrSlp` to cycle through):
  - Red: 1 min
  - Green: 3 mins
  - Blue: 10 mins
  - White: 10+ mins