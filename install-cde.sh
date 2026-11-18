#!/bin/sh
# Runs only in CDE workspaces (the Dotfiles start script sets CDE=1).
# Its presence turns off the start script's automatic linking, so link the
# files here ourselves.
set -eu

repo=$(cd "$(dirname "$0")" && pwd)

for f in .bashrc .gitconfig .npmrc; do
  ln -sfn "$repo/$f" "$HOME/$f"
done

# Proof that this script ran instead of the automatic linking.
echo "ran CDE=${CDE:-unset} commit=$(git -C "$repo" rev-parse --short HEAD) at $(date -u +%FT%TZ)" > "$HOME/.dotfiles-install-ran"
