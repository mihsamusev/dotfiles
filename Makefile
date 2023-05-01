fetch-shell:
	cp ${HOME}/.zshrc .zshrc
	cp ${HOME}/.vimrc .vimrc

fetch-vscode-linux:
	mkdir -p vscode/linux && cp ${HOME}/.config/Code/User/*.json vscode/linux/

fetch-vscode-windows:
	mkdir -p vscode/windows && cp ${APPDATA}/Code/User/*.json vscode/windows/

fetch-nvim-linux:
	mkdir -p nvim && cp -r ${HOME}/.config/nvim/* nvim/


