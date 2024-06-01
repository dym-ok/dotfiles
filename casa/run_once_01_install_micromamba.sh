#!/bin/bash
if [[ "$(type micromamba)" == "micromamba not found" ]]; then
	echo "micromamba already installed"
else
	echo "installing micromamba"
	"${SHELL}" <(curl -L micro.mamba.pm/install.sh)
	./bin/micromamba shell init -s zsh -p ~/micromamba
	source ~/.zshrc
fi
