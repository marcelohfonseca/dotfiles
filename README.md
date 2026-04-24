# Meus Dotfiles

Este repositório contém meus arquivos de configuração (dotfiles) para git, zsh, aliases e feeds no padrão OPML.

```txt
    .
    ├── aliases/
    │   └── .aliases
    ├── git/
    │   └── .gitconfig
    ├── rss/
    │   └── feed.OPML
    ├── zsh/
    │   └── .zshrc
    └── README.md
```

## Como Usar

Caso os arquivos já existam, faça um backup antes de clonar o repositório, ou remova-os com o comando `rm`:

```sh
rm ~/.aliases ~/.gitconfig ~/feed.OPML ~/.zshrc
```

Agore clone o repositório na pasta **~/.dotfiles** (ou outra pasta de sua preferência):

```sh
git clone git@github.com:marcelohfonseca/dotfiles.git ~/.dotfiles

```

Com o repositório clonado, crie links simbólicos para os arquivos de configuração. Exemplo:

```sh
ln -s ~/.dotfiles/aliases/.aliases ~/.aliases
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/rss/feed.OPML ~/feed.OPML
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
```

Após criar os links simbólicos, reinicie o terminal para que as configurações sejam aplicadas.

```sh
source ~/.zshrc
```
