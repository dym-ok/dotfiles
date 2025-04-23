#!/usr/bin/env zsh
if [[ "$(type micromamba)" == "micromamba not found" ]]; then
	echo "installing micromamba"
	"${SHELL}" <(curl -L micro.mamba.pm/install.sh)
	micromamba shell init -s zsh -p "$HOME/micromamba"
else
	echo "micromamba already installed"
fi

micromamba install -y pipx

if [[ "$(type poetry)" == "poetry not found" ]]; then
	echo "installing poetry"
	pipx install poetry
else
	echo "poetry already installed"
fi

if [[ "$(type poe)" == "poe not found" ]]; then
	echo "installing poe"
	pipx install poethepoet
	mkdir -p ~/.oh-my-zsh/completions
	poe _zsh_completion >~/.oh-my-zsh/completions/_poe

else
	echo "poe already installed"
fi
