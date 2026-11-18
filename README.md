My personal Neovim config. I stole the skeleton from Typecraft on Youtube, long ago and continue to grow with it!

## Terminal background picture (Ghostty)

Neovim is transparent, Ghostty draws the picture from `extras/bg.png` behind it.
Setup on a new machine:

1. `sudo pacman -S ghostty`
2. Add to the end of `~/.config/ghostty/config`:
   ```
   config-file = ?"~/.config/nvim/extras/ghostty.conf"
   ```
3. Optional, make Ghostty the default terminal: put `com.mitchellh.ghostty.desktop` at the top of `~/.config/xdg-terminals.list`
4. Optional, smaller font: `font-size = 14` in `~/.config/ghostty/config`

Picture strength: `background-image-opacity` in `extras/ghostty.conf`.
Theme picker with live preview: `<leader>th`.
