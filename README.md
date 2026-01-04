# Meus Dotfiles

Este repositório contém meus arquivos de configuração (dotfiles) para git, zsh, aliases e feeds no padrão OPML.

```txt
    .
    ├── aliases/
    │   └── .aliases
    ├── bash/
    │   └── .bashrc
    ├── config/
    │   └── Positron/User/settings.json
    ├── git/
    │   └── .gitconfig
    ├── zsh/
    │   ├── .p10k.zsh
    │   ├── .zprofile
    │   └── .zshrc
    ├── feed.OPML
    ├── README.md
    └── tilingshell-layouts.json
```

## Como Usar

Caso os arquivos já existam, faça um backup antes de clonar o repositório, ou remova-os com o comando `rm`:

```sh
rm ~/.aliases ~/.gitconfig ~/.p10k.zsh ~/.zprofile ~/.zshrc ~/feed.OPML
```

Agore clone o repositório na pasta **~/.dotfiles** (ou outra pasta de sua preferência):

```sh
git clone git@github.com:marcelohfonseca/dotfiles.git ~/.dotfiles

```

Com o repositório clonado, crie links simbólicos para os arquivos de configuração. Exemplo:

```sh
ln -s ~/.dotfiles/aliases/.aliases ~/.aliases
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/feed.OPML ~/feed.OPML
ln -s ~/.dotfiles/config/Positron/User/settings.json ~/.config/Positron/User/settings.json
```

Após criar os links simbólicos, reinicie o terminal para que as configurações sejam aplicadas.

```sh
source ~/.zshrc
```

## Personalização

* **Aliases**: Adicione seus próprios aliases no arquivo **aliases/.aliases**.
* **Bash**: Modifique os arquivos da pastas **bash/** com suas personalizações do bash.
* **Git**: Modifique o arquivo **git/.gitconfig** com suas preferências do git.
* **Zsh**: Modifique os arquivos **zsh/.zshrc**, **zsh/.zprofile** e **zsh/.p10k.zsh** com suas personalizações do zsh.
* **feed.OPML**: Caso queira ter controle sobre seus próprios feeds, utilize o padrão OPML para configurá-lo e importar em sua ferramenta de Feed RSS.
