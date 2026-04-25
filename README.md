# Gerenciamento dos meus .dotfiles

Este repositório contém meus arquivos de configuração (dotfiles) para o ambiente Linux, gerenciados com GNU Stow.

```txt
. 
├── zsh/ → .zshrc 
├── git/ → .gitconfig 
├── tmux/ → .tmux.conf 
├── aliases/ → .aliases 
├── rss/ → feed.OPML 
├── ohmyposh/ → ~/.config/ohmyposh 
├── positron/ → ~/.config/Positron 
├── dbeaver/ → preferências do DBeaver 
├── scripts/ → scripts auxiliares 
├── bootstrap.sh 
└── README.md
```

## Como Usar

> Recomenda-se sempre fazer backup dos arquivos existes antes de aplicar os dotfiles.

1. Remover arquivos antigos (se necessário)

```sh
rm ~/.aliases ~/.gitconfig ~/feed.OPML ~/.tmux.conf ~/.zshrc # [...]
```

2. Clonar o repositório

```sh
git clone git@github.com:marcelohfonseca/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

3. Instalar o [GNU Stow](https://www.gnu.org/software/stow/)

```sh
sudo apt update && sudo apt install stow -y
```

4. Aplicar os dotfiles

```sh
./bootstrap.sh
```

## Como isso funciona

O GNU Stow cria links simbólicos (symlinks) da sua `$HOME` para os arquivos dentro do repositório.

Exemplo:

```sh
~/.zshrc → ~/.dotfiles/zsh/.zshrc
```

Ou seja:
- Você edita os arquivos dentro de `~/.dotfiles`
- O sistema usa eles como se estivessem na `$HOME`

## Organização com Stow

Cada diretório dentro do repositório representa um pacote independente.

```sh
stow zsh
stow git
```

> Evite usar `stow .`, pois isso pode causar conflitos (principalmente com `.config`).

## Aplicar mudanças

Se adicionar novos arquivos em algum pacote:
```sh
stow -R <pacote>
```

Exemplo:
```
stow -R zsh
```

## Remover configurações

```
stow -D <pacote>
```

## Observações

- A estrutura de cada pacote deve espelhar o destino na `$HOME`
- Apenas parte da `.config` é versionada (evitando conflitos, no meu caso)
- O DBeaver utiliza um caminho customizado (`~/.local/share/...`)
- O Positron também utiliza uma personalização de seus arquivos principais ()
