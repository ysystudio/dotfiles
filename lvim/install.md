# ------------------ install neovim -----------------------
> .curlrc to add proxy as :proxy = http://10.160.84.32:8080 , it sits in ~.
curl <https://sh.rustup.rs> -sSf | sh # install rust and cargo
brew install neovim make npm node lua
choco install neovim

# install lunarvim

<https://www.lunarvim.org/docs/installation>

# fix : Error during download, please verify your internet connection

:lua require("nvim-treesitter.install").prefer_git = true

# fix error: treesitter/query.lua:219: query: invalid node type

:echo nvim_get_runtime_file('parser', v:true)
['/home/holger/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter/parser', '/usr/lib/nvim/parser']
"If you get more than one path, remove the ones that are outside this plugin (nvim-treesitter directory),
so the correct version of the parser is used.".
# if there any error :treesitter/query.lua:219: query: invalid node type 
> :TSUpdate

# fix error: nvim-tree can not open on windows10,modify the code as below in the watch.lua:19
local function is_folder_ignored(path)
  -- for _, ignore_dir in ipairs(M.ignore_dirs) do
    -- if vim.fn.match(path, ignore_dir) ~= -1 then
      -- return true
    -- end
  -- end

  return false
end

# ------------------unintall-----------------------------------------------

bash ~/.local/share/lunarvim/lvim/utils/installer/uninstall.sh

# or

bash <(curl -s <https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.sh>)

# ---------------- config lvim ---------------------------------------------
>
>on linux or macos
unlink ~/.config/lvim
ln -s ~/dev/dotfiles/lvim ~/.config/lvim

unlink ~/.vim/tasks.ini
ln -s ~/dev/dotfiles/lvim/tasks.ini ~/.vim/tasks.ini

> on windows
rmdir /s "%USERPROFILE%/AppData/Local/lvim"
mklink /j  "%USERPROFILE%/AppData/Local/lvim" "%USERPROFILE%/dev/dotfiles/lvim"

mkdir  "%USERPROFILE%/.vim
mklink /h  "%USERPROFILE%/.vim/tasks.ini" "%USERPROFILE%/dev/dotfiles/lvim/tasks.ini"

# Updating LunarVim

Inside LunarVim :LvimUpdate
From the command-line lvim +LvimUpdate +q

# Update the plugins

Inside LunarVim :LvimSyncCorePlugins

# popular commands
## nvim-tree

   '<C-]>', api.tree.change_root_to_node,          
   '-',     api.tree.change_root_to_parent,        
   'a',     api.fs.create,                         
   'c',     api.fs.copy.node,                      
   'p',     api.fs.paste,                          
   'd',     api.fs.remove,                         
   'D',     api.fs.trash,                          
   'F',     api.live_filter.clear,                 
   'f',     api.live_filter.start,                 
   'g?',    api.tree.toggle_help,                  
   'H',     api.tree.toggle_hidden_filter,         
   'I',     api.tree.toggle_gitignore_filter,      
   'J',     api.node.navigate.sibling.last,        
   'K',     api.node.navigate.sibling.first,       
   'm',     api.marks.toggle,                      
   'e',     api.fs.rename_basename,                
   'r',     api.fs.rename,                         
   's',     api.node.run.system,                   
   'S',     api.tree.search_node,                  
   'U',     api.tree.toggle_custom_filter,         
   'E',     api.tree.expand_all,                   
   'W',     api.tree.collapse_all,                 
   'x',     api.fs.cut,                            
   'gy',    api.fs.copy.absolute_path,             
   'y',     api.fs.copy.filename,                  
   'Y',     api.fs.copy.relative_path,             
