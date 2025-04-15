#!/bin/zsh
if [[ "$(type fnm)" == "fnm not found" ]]; then
	curl -fsSL https://fnm.vercel.app/install | zsh /dev/stdin --skip-shell --install-dir "$HOME/.fnm"
	source ${HOME}/.zshrc
	fnm install v20.14.0
else
	echo "fnm already installed"
fi
