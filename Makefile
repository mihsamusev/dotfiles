fetch:
	cp ${HOME}/.zshrc .zshrc
	cp ${HOME}/.vimrc .vimrc
	mkdir -p .vscode && cp ${HOME}/.config/Code/User/*.json .vscode/

deploy-vscode:
	cp .vscode/* ${HOME}/.config/Code/User/ 

fetch-nvim:
	mkdir -p nvim && cp -r ${HOME}/.config/nvim/* nvim/


