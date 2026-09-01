#!/bin/zsh

set -euo pipefail

source_dir="${1:-/Users/alex/Documents/Princeton/Fall 2026/COS 433}"
repo_dir="${0:A:h:h}"
destination_dir="$repo_dir/slides/fall-2026"
source_files=("$source_dir"/L[0-9][0-9]-final.pdf(N))

if (( ${#source_files[@]} == 0 )); then
  print -u2 "No files matching LXX-final.pdf were found in: $source_dir"
  exit 1
fi

mkdir -p "$destination_dir"
cp -p "$source_files[@]" "$destination_dir/"
print "Synced ${#source_files[@]} slide PDFs to: $destination_dir"
