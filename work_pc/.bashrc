
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [ -f '/c/Users/MihhailSamusev/miniconda3/Scripts/conda.exe' ]; then
    eval "$('/c/Users/MihhailSamusev/miniconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
fi
# <<< conda initialize <<<

export NVIM_HOME="~/AppData/Local/nvim"
export TOOLKIT_HOME="~/projects/toolkit/"

alias git-latest="git for-each-ref --sort=-committerdate refs/heads/ --format='%(committerdate:iso8601) %(refname:short)'"
alias git-flake='flake8 $(git ls-files "*.py")'
alias toolkit-sync="pip install --force-reinstall .[toolkit]"
