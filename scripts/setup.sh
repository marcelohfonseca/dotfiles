#!/bin/bash

set -e # stop the script if it gives an error

echo ""
echo "-> Iniciando configuração do ambiente..."

# directory of the script
DOTFILES_DIR="$HOME/.dotfiles"
ALIASES_DIR="$DOTFILES_DIR/aliases"
INSTALL_DIR="$DOTFILES_DIR/install"

# function to clone dotfiles
clone_dotfiles() {
    if [ -d "$DOTFILES_DIR" ]; then
        read -p "O diretório .dotfiles já existe. Deseja sobrescrevê-lo? (y/n) " confirm
        if [[ "$confirm" != "y" ]]; then
            exit 1
        fi
        rm -rf "$DOTFILES_DIR"
    fi
    git clone https://github.com/marcelohfonseca/dotfiles.git "$DOTFILES_DIR"
}

# function to execute scripts
install_scripts() {
    local category="$1"
    for script in "$DOTFILES_DIR/install/$category/"*.sh; do
        echo ""
        echo "-> Executando script: $script"
        bash "$script"
    done
}

# install system prerequisites
echo ""
echo "-> Instalando pré-requisitos..."
bash "$DOTFILES_DIR/scripts/prerequisites.sh" || { echo "Falha ao executar prerequisites.sh. Abortando."; }

# delete content from .oh-my-zsh
rm -rf "$HOME/.oh-my-zsh"

# install scripts
install_scripts "utilities"
install_scripts "tools"

source $HOME/.cargo/env
install_scripts "python-libraries"

# delete dotfiles
echo ""
echo "-> Deletando dotfiles..."
rm -rf "$HOME/.aliases"
rm -rf "$HOME/.bashrc"
rm -rf "$HOME/.profile"
rm -rf "$HOME/.gitconfig"
rm -rf "$HOME/.zshrc"
rm -rf "$HOME/.zprofile"
rm -rf "$HOME/.p10k.zsh"

# clone dotfiles
clone_dotfiles

# create symlinks for dotfiles
echo ""
echo "-> Criando links simbólicos para os dotfiles..."
ln -s "$HOME/.dotfiles/aliases/.aliases" "$HOME/.aliases"
ln -s "$HOME/.dotfiles/dotfiles/bash/.bashrc" "$HOME/.bashrc"
ln -s "$HOME/.dotfiles/dotfiles/bash/.profile" "$HOME/.profile"
ln -s "$HOME/.dotfiles/dotfiles/git/.gitconfig" "$HOME/.gitconfig"
ln -s "$HOME/.dotfiles/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
ln -s "$HOME/.dotfiles/dotfiles/zsh/.zprofile" "$HOME/.zprofile"
ln -s "$HOME/.dotfiles/dotfiles/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

# reload new settings
echo ""
echo "-> Alterando terminal padrão..."
chsh -s $(which zsh) $USER

#source ~/.zshrc || { echo "Falha ao tentar aplicar as mudanças em ~/.zshrc. Reinicie seu terminal."; }

echo ""
echo "-> Configuração do ambiente finalizada!"

exit
