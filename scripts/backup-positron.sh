#!/usr/bin/env bash
set -e

SRC="$HOME/.config/Positron/User"
DST="$HOME/.dotfiles/positron"

echo "→ Backing up Positron config..."

# user configs
mkdir -p "$DST/user"

cp "$SRC/settings.json" "$DST/user/settings.json"
cp "$SRC/keybindings.json" "$DST/user/keybindings.json"

rm -rf "$DST/user/snippets"
cp -r "$SRC/snippets" "$DST/user/snippets"

echo "✔ User configs saved"

# extensions por profile (mapeamento manual)
echo "→ Backing up extensions per profile..."

# ajuste aqui conforme tua identificação
declare -A MAP=(
  ["-76029d75"]="work"
  ["e20531e"]="researcher"
  ["2dd6bb87"]="data-scientist"
)

mkdir -p "$DST/extensions"

for id in "${!MAP[@]}"; do
  name="${MAP[$id]}"
  src_file="$SRC/profiles/$id/extensions.json"
  dst_file="$DST/extensions/$name.json"

  if [ -f "$src_file" ]; then
    cp "$src_file" "$dst_file"
    echo "✔ $name ($id)"
  else
    echo "⚠ Profile $id não encontrado"
  fi
done

echo "✔ Backup completo"
