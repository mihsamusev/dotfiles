fetch:
	cp ${HOME}/.zshrc .zshrc
	cp ${HOME}/.vimrc .vimrc
	mkdir -p .vscode && cp ${HOME}/.config/Code/User/*.json .vscode/
backup:
	mv ~/.config/nvim ~/.config/nvim.bak
	mv ~/.local/share/nvim ~/.local/share/nvim.bak
	mv ~/.local/state/nvim ~/.local/state/nvim.bak
	mv ~/.cache/nvim ~/.cache/nvim.bak

