# Requirements
  Neovim >= 0.9.0 (needs to be built with LuaJIT)
  Git >= 2.19.0 (for partial clones support)
  a Nerd Font(v3.0 or greater) (optional, but needed to display some icons)
  lazygit (optional)
  a C compiler for nvim-treesitter.
  curl for blink.cmp (completion engine)
  for fzf-lua (optional)
  fzf: fzf (v0.25.1 or greater)
  live grep: ripgrep
  find files: fd
## a terminal that support true color and undercurl:
  kitty (Linux & Macos)
  wezterm (Linux, Macos & Windows)
  alacritty (Linux, Macos & Windows)
  iterm2 (Macos)

# Install the LazyVim Starter with PowerShell
## Make a backup of your current Neovim files:
  > required
  Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
  > optional but recommended
  Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
## Clone the starter
  git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
## Remove the .git folder, so you can add it to your own repo later
  Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force

  Start Neovim!

# neo tree 
<backspace>   = show upper root
.             = set_root:    Changes the root directory to the currently selected folder.
<cr>          = open:        Same as above.
z         = close_all_nodes: Close all nodes in the tree.


FILE ACTIONS                                            *neo-tree-file-actions*
a    = add:                  Create a new file OR directory.
A    = add_directory:        Create a new directory,
d    = delete:               Delete the selected file or directory.
i    = show_file_details     Show file details in a popup window, such as size and last modified date.
r    = rename:               Rename the selected file or directory.
b    = rename_basename:      Rename the selected file or directory without the extension.
y    = copy_to_clipboard:    Mark file to be copied. Supports visual selection.~
x    = cut_to_clipboard:     Mark file to be cut (moved). Supports visual selection.~
p    = paste_from_clipboard: Copy/move each marked file to the selected folder.
c    = copy:                 Copy the selected file or directory
m    = move:                 Move the selected file or directory.

VIEW CHANGES                                            *neo-tree-view-changes*
H  = toggle_hidden:  Toggle whether hidden (filtered items) are shown or not.
R  = refresh:        Rescan the filesystem and redraw the tree. 
o  = order_by...     Show help menu for order by choices.
