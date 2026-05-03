#!/bin/bash

set -e

CACHEDIR="${XDG_CACHE_HOME:=$HOME/.cache}"
CACHEDIR+="/snapshots/dotfile"
CACHEDIR+="/$(date +%Y-%m-%d/%H-%M-%S)"

mkdir -p "$CACHEDIR"

DFS="$CACHEDIR/managed.txt"
chezmoi managed --include files > "$DFS"

while read -r DF; do 
    if [ -f "$HOME/$DF" ]; then
        mkdir -p "$(dirname "$CACHEDIR"/"$DF")"
        cp "$HOME/$DF" "$CACHEDIR/$DF"
    fi
done < "$DFS"