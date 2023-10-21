# My environment configuration

## Locations
### Windows
- config root `~/AppData/Local/nvim`
- plug `~/AppData/Local/nvim/autoload`
- installed plugins `~/AppData/Local/nvim-data`

- Microsoft Store -> PowerToys -> remap SHIFT to CTRL


## VSCode
Non default settings go here on Windows
- $APPDATA/Code/User/keybindings.json
- $APPDATA/Code/User/settings.json

Here on Ubuntu
- $HOME/.config/Code/User/settings.json
- $HOME/.config/Code/User/settings.json


### Ubuntu
`~/.config/nvim/init.vim`

Plugin manger: Plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## From fresh terminal
```
sudo apt update
sudo apt install git curl bat fzf build-essential
```

## Console and editors 
- nvim
    - Plug usually in $HOME/.local/share/nvim/site/autoload/plug.vim
    - plugins themself in $/.local/share/nvim/plugged
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


## Racket
´´´
sudo add-apt-repository ppa:plt/racket
sudo apt update
sudo apt install racket
´´´




