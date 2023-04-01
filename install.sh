# Evan Krell's Config File Installation Script
# It simply copies the files to their typical system locations

safe_copy() {
  file_source=$1
  file_dest=$2

  echo ""

  overwrite=1
  if test -f "$file_dest"; then
    echo "$file_dest exists."
    read -p "Okay to overwrite? [Y/N]" -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      overwrite=0
    fi
  fi

  if [[ $overwrite == 1 ]]; then
    echo "cp $file_source $file_dest"
    cp $file_source $file_dest
  fi

  echo ""
}

# Xresources
safe_copy Xresources $HOME/.Xresources
xrdb $HOME/.Xresources

# urxvt extensions
safe_copy resize-font $HOME/.urxvt/ext/resize-font

# Hosts file (for autocompletion of common domains)
safe_copy hosts $HOME/.hosts
# Enable within /etc/hosts
echo "\$include $HOME/.hosts" | sudo tee -a /etc/hosts

# vim

# tmux
