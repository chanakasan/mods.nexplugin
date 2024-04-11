mkdir -p $HOME/user_mods/bash
touch $HOME/user_mods/bash/empty.sh

for f in $nex_umods_path/bash/*.sh; do
  source $f
done

for f in $nex_umods_path/*; do
  tmp_file=$f/src/main.sh
  if [ -f "$tmp_file" ]; then
    source $tmp_file
  fi
done
