#!/usr/bin/env bash

###### Common methods
not_installed()
{
  pkg="$1"
  `which "$PKG"`
  st=$?
  return $st
}

# Execution started
echo "Bootstap any new instance"
SDIR="$( cd "$(dirname "$0")"; pwd -P)"
if not_installed python; then
	echo "Python is not installed."
	exit -1
fi

if not_installed git; then
	echo "Git not installed"
	exit -1
fi

if not_installed ansible; then
	echo "Ansible not installed."
	exit -1
fi

echo "source dir: ${SDIR}"

VIM_DIR="${SDIR}/files/vim_profile/"
echo "vim dir: ${VIM_DIR}"
echo "Copy vimrc file"
cp ${VIM_DIR}/vimrc ${HOME}/.vimrc

echo "Copy vim dir"
cp -R ${VIM_DIR}/vim ${HOME}/.vim
