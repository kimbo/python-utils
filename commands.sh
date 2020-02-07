#!/bin/bash
#
# shell commands to make python version management easier
#
DEFAULT_PYTHON_VERSION=python
DEFAULT_VIRTUALENV_NAME=venv

v() {
	version="${1:-$DEFAULT_PYTHON_VERSION}"
	path="${2:-$DEFAULT_VIRTUALENV_NAME}"
	virtualenv --python "$version"
}

v3() {
	path={$1:$DEFAULT_VIRTUALENV_NAME}
	v python3 "$path"
}

v2() {
	path={$1:$DEFAULT_VIRTUALENV_NAME}
	v python2 "$path"
}

alias a="activate"
alias d="deactivate"

