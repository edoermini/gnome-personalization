#!/bin/sh

function zsh_install {
    echo "[+] Installing fonts packet..."
    sudo apt install fonts-hack

    echo "[+] Installing zsh..."
    sudo apt install zsh

    echo "[+] Checking installation of zsh..."

    zsh_out=$(zsh --version)
    if [[ zsh_out == 'zsh '* ]]; then 
        echo "[+] zsh installed succsesfully";
    fi

    echo "[+] Installing oh my zsh..."
    curl -fsSL "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh" > oh-my-zsh-install.sh
    sh "oh-my-zsh-install.sh" --unattended
    rm "oh-my-zsh-install.sh"

    echo
    echo "[?] Change ZSH_THEME='robbyrussell' to ZSH_THEME='agnoster' in \$HOME/.zshrc"
    echo "[?] Change font on terminal to 'Hack Regular'"
    echo

    echo "[+] Making default shell..."
    chsh -s $(which zsh)

    echo "synclient VertScrollDelta=-211" >> $HOME/.zshrc
    echo "synclient HorizScrollDelta=-211" >> $HOME/.zshrc

    return
}

function flat_remix_install {
    sudo apt install libglib2.0-dev-bin imagemagick
    git clone https://github.com/daniruiz/flat-remix-gnome.git
    cd flat-remix-gnome
    make
    sudo make install
    cd ..
    rm -rf flat-remix-gnome

    git clone https://github.com/daniruiz/flat-remix.git
    cd flat-remix
    make
    sudo make install
    cd ..
    rm -rf flat-remix

    git clone https://github.com/daniruiz/flat-remix-gtk.git
    cd flat-remix-gtk
    make
    sudo make install
    cd ..
    rm -rf flat-remix-gtk

    return
}

sudo apt install gnome-tweak-tool
flat_remix_install()
zsh_install()

echo "[+] Gnome extensions to install:"
echo "* Dash to panel"
echo "* Arc Menu"
