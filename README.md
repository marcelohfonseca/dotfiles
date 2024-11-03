# Meus Dotfiles

Este repositório contém meus arquivos de configuração (dotfiles) para git, zsh e aliases.

```txt
./
├── aliases/
│   └── .aliases
├── git/
│   └── .gitconfig
├── zsh/
│   ├── .p10k.zsh
│   ├── .zprofile
│   └── .zshrc
└── README.md
```

## Como Usar

Caso os arquivos já existam, faça um backup antes de clonar o repositório.

```sh
git clone git@github.com:marcelohfonseca/dotfiles.git ~/.dotfiles

```

Com o repositório clonado, crie links simbólicos para os arquivos de configuração. Exemplo:

```sh
ln -s ~/.dotfiles/aliases/.aliases ~/.aliases
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
```

Após criar os links simbólicos, reinicie o terminal para que as configurações sejam aplicadas.

```sh
source ~/.zshrc
```

## Personalização

* **Aliases**: Adicione seus próprios aliases no arquivo **aliases/.aliases**.
* **Git**: Modifique o arquivo **git/.gitconfig** com suas informações.
* **Zsh**: Modifique o arquivo **zsh/.zprofile** com suas informações.
