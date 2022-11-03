#!/usr/bin/env bash

if [[ `cat ~/.config/gtk-3.0/settings.ini | grep gtk-theme-name | cut -d "=" -f 2` == "Cutefish-dark" && `grep '$bgc: #fff;' ./eww.scss` == '$bgc: #fff;' ]]
    then sed -i 's/$bgc: #fff;/$bgc: #000;/' ./eww.scss; sed -i 's/$fgc: #000;/$fgc: #fff;/' ./eww.scss

elif [[ `cat ~/.config/gtk-3.0/settings.ini | grep gtk-theme-name | cut -d "=" -f 2` == "Cutefish-light" && `grep '$bgc: #000;' ./eww.scss` == '$bgc: #000;' ]]
    then sed -i 's/$bgc: #000;/$bgc: #fff;/' ./eww.scss; sed -i 's/$fgc: #fff;/$fgc: #000;/' ./eww.scss
fi