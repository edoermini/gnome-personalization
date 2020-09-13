#! bin/bash

sudo apt install libglib2.0-dev-bin imagemagick
git clone https://github.com/daniruiz/flat-remix-gnome.git
cd flat-remix-gnome
make
sudo make install
rm -rf flat-remix-gnome

git clone https://github.com/daniruiz/flat-remix.git
cd flat-remix
make
sudo make install
rm -rf flat-remix

git clone https://github.com/daniruiz/flat-remix-gtk.git
cd flat-remix-gtk
make
sudo make install
rm -rf flat-remix-gtk