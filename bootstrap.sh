#!/usr/bin/env bash

###### Common methods
is_installed()  
{
  pkg="$1"
  `which "$PKG"`
  st=$?
  if [ $st -eq 0 ]; then return 1; else return 0; fi
}


echo "Bootstap any new instance"
if is_installed python; then echo "Python is installed."; else echo "Python is not installed."; fi
