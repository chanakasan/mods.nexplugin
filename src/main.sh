for f in $HOME/user_mods/*; do
  tmp_file=$f/src/entry.sh
  if [ -f "$tmp_file" ]; then
    source $tmp_file
  fi
done
