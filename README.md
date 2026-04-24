# Gerenciamento dos meus .dotfiles

Este repositório contém meus arquivos de configuração (dotfiles) para o ambiente Linux.

```txt
    .
    ├── .aliases
    ├── .feed.OPML
    ├── .gitconfig
    ├── .tmux.conf
    ├── .zshrc
    └── README.md
```

## Como Usar

> Recomenda-se sempre fazer backup dos arquivos existes antes de aplicar os dotfiles.

1. Remover arquivos antigos (se existirem)

```sh
rm ~/.aliases ~/.gitconfig ~/feed.OPML ~/.tmux.conf ~/.zshrc
```

2. Clonar o repositório

```sh
git clone git@github.com:marcelohfonseca/dotfiles.git ~/.dotfiles

```

3. Instalar o [GNU Stow](https://www.gnu.org/software/stow/)

```sh
sudo apt update && sudo apt install stow -y
```

4. Criar os symlinks com GNU Stow

```
cd ~/.dotfiles
stow .
```

## Como isso funciona

O GNU Stow cria links simbólicos (symlinks) da sua `$HOME` para os arquivos dentro do repositório.

Exemplo:

```
~/.zshrc → ~/.dotfiles/zsh/.zshrc
```

Ou seja:
- Você edita os arquivos dentro de `~/.dotfiles`
- E o sistema usa eles como se estivessem na `$HOME`

## Criação de novos "symlinks"

Sempre que adicionar algum novo arquivo a estrutura, será necessário executar o comando abaixo para gerar o novo link simbólico:

```
cd ~/.dotfiles
stow -R .
```

## Remoção de "symlinks" (desinstalar configurações)

```
stow -D .
```

## Observação importante

A estrutura de pastas dentro do repositório deve espelhar exatamente o destino esperado na $HOME. Isso garante que o Stow crie os links corretamente.
