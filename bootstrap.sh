#!/usr/bin/env bash

###### Common methods
not_installed()  
{
  pkg="$1"
  `which "$PKG"`
  st=$?
  return $st
}


echo "Bootstap any new instance"
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

