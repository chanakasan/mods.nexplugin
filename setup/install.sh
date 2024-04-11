#!/bin/bash

set -e

source $(dirname "$0")/config.sh
source $nex_support_path/src/plugin/install/helpers.sh

main() {
  uninstall_if $@
  start
  validate
  remove_from_bashrc
  copy_to_bashrc
  download_user_mods
  finish
}

download_user_mods() {
  local dest=$HOME/user_mods
  if [ -d "$dest" ]; then
    mkdir -p $HOME/backup
    mv $dest $HOME/backup/user_mods--$(timestamp)
  fi
  git clone git@github.com:chanakasan/nex_user_mods.git $dest
}

timestamp() {
    echo $(date -u +"%Y_%m%d_%H%M_%S")
}

main
