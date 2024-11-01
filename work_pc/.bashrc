
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [ -f '/c/Users/MihhailSamusev/miniconda3/Scripts/conda.exe' ]; then
    eval "$('/c/Users/MihhailSamusev/miniconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
fi
# <<< conda initialize <<<

export NVIM_HOME="$HOME/AppData/Local/nvim/"
export TOOLKIT_HOME="$HOME/projects/toolkit/"

alias ga="git add"
alias gc="git commit -m"
alias gp="git push"

alias glatest="git for-each-ref --sort=-committerdate refs/heads/ --format='%(committerdate:iso8601) %(refname:short)'"
alias glatest3="glatest | head -n 3"
alias glatestn='f() { git for-each-ref --sort=-committerdate refs/heads/ --format="%(refname:short)" | sed -n "${1}p"; }; f'

alias gflake='flake8 $(git ls-files "*.py")'
alias proj-sync="pip install --force-reinstall .[toolkit]"

# settings
alias ts-mo="jq '.model.model_objects[] | {name, type}' -c"
alias ts-solver="jq '.model.solver'"
alias ts-find-coconut='f() { jq ".model.model_objects[] | select(.type = \$mo_type) | del(.price_items)" --arg mo_type "$2" "$1"; }; f'

# toolkit
alias tget="pip install git+https://github.com/BluePowerPartners/toolkit.git"
alias read-hash='grep "HASH:" | awk "{print \$2}"'
alias browser='f() { powershell.exe Start-Process "$1"; }; f'
alias tkversion='f() { cat "$1" | read-hash | sed "s/.*/&:pyproject.toml/" | xargs git show | grep toolkit.git; }; f'

alias lsf10='f() { find "$1" -maxdepth 1 -type d | head -n 10 | nl -w 2 -s ": "; }; f'
alias lsf='f() { find "$1" -maxdepth 1 -type d | nl -w 2 -s ": "; }; f'

## pixi
alias pxr='pixi run --no-lockfile-update'

ts-find-coconut() {
    setting=$1
    model_object=$2
    jq '.model.model_objects[] | select(.type == \$mo_type) | del(.price_items)' --arg mo_type "$model_object" "$setting"
}

set-before() {
  root=$1
  row=$2
  BEFORE=$(pwd)/$(lsf "$root" | awk -v n="$row" 'NR==n {print $2}')
  export BEFORE
  echo "BEFORE set to $BEFORE"
}

set-after() {
  root=$1
  row=$2
  AFTER=$(pwd)/$(lsf "$root" | awk -v n="$row" 'NR==n {print $2}')
  export AFTER
  echo "AFTER set to $AFTER"
}

