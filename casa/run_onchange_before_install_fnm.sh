#!/bin/bash
if [[ -e /opt/homebrew/bin/fnm ]]; then
	echo "fnm already installed"
else
	curl -fsSL https://fnm.vercel.app/install | bash
fi
