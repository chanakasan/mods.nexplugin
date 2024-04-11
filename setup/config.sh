# temp
script_dir=$(dirname $0)
root_path=$HOME/dotfiles
tpl_text=$(cat $script_dir/bashrc.tpl)

# paths
this_plugin_name=umods.nexplugin
this_plugin_path=$root_path/$this_plugin_name

# bashrc
bashrc="$HOME/.bashrc"
this_start_text='__nex_umods_start'
this_end_text='__nex_umods_end'
this_middle_text="${tpl_text//__s1__/$this_plugin_path}"
