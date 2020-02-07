#!/bin/bash

__link_bashrc() {
	os="$(uname -s)"
	if [[ "$os" =~ Darwin.* ]]; then
		ln -s -f "$HOME/.bash_profile" "$HOME/.bashrc"
	fi
}

[ ! -f "$HOME/.bashrc" ] && __link_bashrc

rc() {
	vi "$HOME/.bashrc" && . "$HOME/.bashrc"
}
