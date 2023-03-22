# My environment configuration

## Locations
### Windows
- config root `~/AppData/Local/nvim`
- plug `~/AppData/Local/nvim/autoload`
- installed plugins `~/AppData/Local/nvim-data`

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
