#!/bin/bash
if [[ "$(type micromamba)" == "micromamba not found" ]]; then
	echo "installing micromamba"
	"${SHELL}" <(curl -L micro.mamba.pm/install.sh)
	micromamba shell init -s zsh -p $HOME/micromamba
else
	echo "micromamba already installed"
fi
