#! bin/bash

sudo apt install gnome-tweak-tool

git clone https://github.com/home-sweet-gnome/dash-to-panel.git
cd dash-to-panel
make
sudo make install
cd ..
rm -rf dash-to-panel