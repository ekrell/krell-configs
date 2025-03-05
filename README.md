# Evan Krell's Linux Configuration

- Maintain a small collection of config files, extensions, etc
- Installation steps for programs that Evan typically installs
- Tested on Ubuntu 22.04.2 LTS

# Installation

## Install software (debian-based)

	$ sudo apt-get install rxvt-unicode tmux vim htop nmon ranger

## Install configs

	$ bash install.sh

## Other configs

**Vim**

Link the local .vimrc to the config files here

    $ head ~/.vimrc 
    source $REPOPATH/krell-configs/vimrc 
    source $REPOPATH/krell-configs/vimrc_coc

Install vim plugins 

    $ vim
    :PlugInstall

**Vim CoC**

Vim plugin [Conquer of Completion](https://github.com/neoclide/coc.nvim) requires additional installation behind `:PlugInstall`.

    curl -sL install-node.vercel.app/lts | bash 

Then install CoC plugins 

    $ vim
    :CocInstall coc-pyright
    :CocInstall snippets
    :CocInstall word 

## Bash configs (`.bashrc` additions)

    # Local bin 
    PATH=$PATH:$HOME/.local/bin/     

    # PS1
    PS1="\e[0;32m[\A \u] \$ \e[m "





