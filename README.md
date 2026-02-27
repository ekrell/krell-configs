# Evan Krell's Linux Configuration

- Maintain a small collection of config files, extensions, etc
- Installation steps for programs that Evan typically installs
- Tested on Ubuntu 22.04.2 LTS
- These rarely stray far from widely used dotfiles provided by others

This is `step by step` instead of a big config file since it may be that only some parts are needed for customizing a specific machine. For example, I like to have my `vim` and `tmux` configs when I work on remote servers but may not need excessive customization. 

# Part 1: Without Sudo Priviledge 

These steps assume a normal user account, which is useful for working on servers without `sudo` ability. 

**Xresources** 

This dotfile is used to configure X client applications including terminal colors. 

It is only applicable if X is running. Use `echo $XDG_SESSION_TYPE` to check. 

    cp ~/.Xresources ~/.Xresources.orig 
    cp Xresources ~/.Xresources
    xrdb ~/.Xresources

To enable colors without X (pure `tty` session), can add the color codes to `~/.bashrc`: 

    cat ttycolors.sh >> ~/.bashrc





# OLD steps (currently going through these to incorporate into above)


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

	# Install for local user
 	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
	
Then install CoC plugins 

    $ vim
    :CocInstall coc-pyright
    :CocInstall coc-snippets
    :CocInstall coc-word 

## Bash configs (`.bashrc` additions)

    # Local bin 
    PATH=$PATH:$HOME/.local/bin/     

    # PS1
    PS1="\e[0;32m[\A \u] \$ \e[m "





