# My environment configuration

## NVIM Windows without admin using scoop
- Microsoft Store -> PowerToys -> remap SHIFT to CTRL

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb get.scoop.sh | iex
```

```powershell
scoop install neovim
scoop bucket add extras
scoop install extras/vcredist2022
scoop install make gcc
```

`nvim` is ready to be called from command line after terminal restart. The location of configs on Windows is `%USERPROFILE%\AppData\Local\nvim` or check from within nvim with `:echo stdpath('config')`. This is set as `$NVIM_HOME` in the `.bashrc` 


Copy the preset folder
```
cp -r nvim/ $NVIM_HOME
```

Install package manager Packer
```
git clone https://github.com/wbthomason/packer.nvim $NVIM_HOME/pack/packer/start/packer.nvim

# inside nvim/lua/base/packer.lua
:so # to load packer once
:PackerSync
```


## Unix
```
sudo apt update
sudo apt install git curl bat fzf build-essential
```

## Tools

    `sudo apt install xclip` for clipboard support
- git
    - SSH auth keys `ssh-keygen -t ed25519 -c "some email"` then look in `~/.ssh` for `id_ed25519.pub`
- make
- docker

## Aliases
fuzzy search with batcat file preview:
fzf-preview="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

search only directories
fzf-dir="find . -type d | fzf"


## CLI
### Unix based
- tr - allign symbol separated text into rows ´echo $PATH | tr ":" "\n"´
- jq - filter json files
    - `jq '.model.solver' settings.json`
    - `jq '.model.model_objects[] | {name, type}' -c  settings.json`

- sed - substitute strings

### Python based
-- pydepstree - debug module dependencies `pydepstree --packages pandas --mermaid`
-- csvkit - display CSV 

## Language setups
