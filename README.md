# Dot files

## My personal dot files repository

```sh
# --------------------------------------------------
# > Install "Oh My Zsh" for Zsh
# --------------------------------------------------

# install Zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh -y

# install Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install package "zsh-syntax-highlighting"
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)

# install package "zsh-autosuggestions"
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)

# install package "zsh-z"
git clone https://github.com/agkozak/zsh-z ~/.oh-my-zsh/custom/plugins/zsh-z
# add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)

# install theme powerlevel10k
# https://github.com/romkatv/powerlevel10k#oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc


# --------------------------------------------------
# > Setup dotfiles
# --------------------------------------------------

# remove .zshrc default file
rm -rf ~/.zshrc

# copy my .dotfiles github repository
git clone https://github.com/marcelohfonseca/dotfiles.git ~/.dotfiles

# create symbolic links with my .dotfiles
cd ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
cd ~

# make it your default shell
chsh -s $(which zsh)

# reload new settings
source ~/.zshrc
```

## How to extract current installed files?
```sh
cd ~/.dotfiles && brew bundle dump --force && git add . && git commit -m "Update dotfiles" && git push
```
