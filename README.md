# My environment configuration

## Locations
### Windows
- config root `~/AppData/Local/nvim`
- plug `~/AppData/Local/nvim/autoload`
- installed plugins `~/AppData/Local/nvim-data`

- Microsoft Store -> PowerToys -> remap SHIFT to CTRL


## VSCode keybindings
- VSCode - to make sure Ctrl + W VIM bindings work make sure that `extension.vim_ctrl+w` actually has Ctrl + W keybinding.
- Focus terminal keybinding `oem_5` which is the wierd `1/2` below ESC on nordic keyboard.
### Ubuntu
`~/.config/nvim/init.vim`

Plugin manger: Plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```


## Console and editors 
- nvim
- batcat
- fzf

## Tools
- git
    - SSH auth keys
- make
- docker

## Languages
- python
- rust

## Windows
```
choco install make neovim batcat fzf
```


## Aliases
fuzzy search with batcat file preview:
fzf-preview="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

search only directories
fzf-dir="find . -type d | fzf"
