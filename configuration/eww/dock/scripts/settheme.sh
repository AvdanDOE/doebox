#!/usr/bin/env bash

if [[ `cat ~/.config/gtk-3.0/settings.ini | grep gtk-theme-name | cut -d "=" -f 2` == "Cutefish-dark" && `grep '$bgc: #fff;' ./eww.scss` == '$bgc: #fff;' ]]
    then
    sed -i 's/fill="#1c1c1d"/fill="#ffffff"/g' ../globalassets/avlogo.svg
    sed -i 's/$bgc: #fff;/$bgc: #1c1c1d;/' ./eww.scss
    sed -i 's/$fgc: #1c1c1d;/$fgc: #fff;/' ./eww.scss
    sed -i 's/$sbg: #fff;/$sbg: #2c2c2d;/' ./eww.scss
    sed -i 's/$lacct;/$dacct;/g' ./eww.scss

elif [[ `cat ~/.config/gtk-3.0/settings.ini | grep gtk-theme-name | cut -d "=" -f 2` == "Cutefish-light" && `grep '$bgc: #1c1c1d;' ./eww.scss` == '$bgc: #1c1c1d;' ]]
    then
    sed -i 's/fill="#ffffff"/fill="#1c1c1d"/g' ../globalassets/avlogo.svg
    sed -i 's/$bgc: #1c1c1d;/$bgc: #fff;/' ./eww.scss
    sed -i 's/$fgc: #fff;/$fgc: #1c1c1d;/' ./eww.scss
    sed -i 's/$sbg: #2c2c2d;/$sbg: #fff;/' ./eww.scss
    sed -i 's/$dacct;/$lacct;/g' ./eww.scss
fi