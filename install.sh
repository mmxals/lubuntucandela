#!/bin/bash
apt install python-pyqt5 python-pyqt5.qtwebkit #install requeriments candela_show.py
cp candela_show.py /usr/local/bin/candela_show.py #script candela slideshow
cp logo_candela.png /usr/local/share/logo_candela.png #icon script candela slideshow
cp candela-show.desktop /usr/share/applications/candela-show.desktop #link script candela slideshow
wget http://www.ateneucandela.info/presentacio/img/logo1negatiu.jpg -P /usr/share/wallpapers # download image wallpaper dektop
pcmanfm-qt -w /usr/share/lubuntu/wallpapers/logo1negatiu.jpg  --wallpaper-mode=center #generate file dektop config
cp ~/.config/pcmanfm-qt/lxqt/settings.conf /etc/guest-session/skel/.config/pcmanfm-qt/lxqt/settings.conf #copy desktop config to guest skel
cp panel.conf /etc/guest-session/skel/.config/lxqt/panel.conf #copy launch bar to guest skel (auto-hide, launch apps...)
cp lxqt-rc.xml /etc/guest-session/skel/.config/openbox/lxqt-rc.xml #copy openbox config to guest skel
cp light-locker.desktop /etc/guest-session/skel/.config/autostart/light-locker.desktop #disable locker to guest skel
cp lxqt-xscreensaver-autostart.desktop /etc/guest-session/skel/.config/autostart/lxqt-xscreensaver-autostart.desktop #disable xscreensaver to guest skel
