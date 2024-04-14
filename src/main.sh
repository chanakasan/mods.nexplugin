for f in $nex_mods_base/*; do
  tmp_file=$f/src/entry.sh
  if [ -f "$tmp_file" ]; then
    source $tmp_file
  fi
done
