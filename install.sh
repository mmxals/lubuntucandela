#!/bin/bash
apt install python-pyqt5 python-pyqt5.qtwebkit
cp candela_show.py /usr/local/bin/candela_show.py
cp logo_candela.png /usr/local/share/logo_candela.png
cp candela-show.desktop /usr/share/applications/candela-show.desktop
wget http://www.ateneucandela.info/presentacio/img/logo1negatiu.jpg -P /usr/share/wallpapers
