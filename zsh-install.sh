echo "[+] Installing fonts packet..."
sudo apt install fonts-hack

echo "[+] Installing zsh..."
sudo apt install zsh

echo "[+] Checking installation of zsh..."

zsh_out=$(zsh --version)
if [[ zsh_out == 'zsh '* ]]; then 
    echo "[+] zsh installed succsesfully";
fi

echo "[+] Making default shell..."
chsh -s $(which zsh)

ehco "[+] Installing oh my zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm "./install.sh"

echo "[?] change ZSH_THEME='robbyrussell' to ZSH_THEME='agnoster'"
echo