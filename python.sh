#!/bin/bash
#
# shell commands to make python version management easier
#
default_python_version=python
default_virtualenv_name=venv

v() {
	version="${1:-$default_python_version}"
	path="${2:-$default_virtualenv_name}"
	virtualenv --python "$version" "$path"
}

v3() {
	path="${1:-$default_virtualenv_name}"
	v python3 "$path"
}

v2() {
	path="${1:-$default_virtualenv_name}"
	v python2 "$path"
}

a() {
	dir="${1:-$default_virtualenv_name}"
	. "$dir/bin/activate"
}

alias d="deactivate"
