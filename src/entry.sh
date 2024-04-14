set -e

source $(nex _config)

for f in $nex_mod_base/*; do
  tmp_file=$f/src/entry.sh
  if [ -f "$tmp_file" ]; then
     source $tmp_file
  fi
done
