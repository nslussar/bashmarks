#!/bin/bash
# Converts ~/.sdirs to ~/.sdirs2
# Old: export DIR_name="$HOME/path"
# New: name=$HOME/path

sed 's/^export DIR_//; s/="\(.*\)"$/=\1/' ~/.sdirs > ~/.sdirs2
echo "Migrated $(wc -l < ~/.sdirs2) bookmark(s) to ~/.sdirs2"
