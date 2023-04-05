#!/bin/bash

version=$(git describe --tags --abbrev=0)
version=${version:-v0.0.0}

major=$(echo $version | cut -d. -f1 | sed 's/v//')
minor=$(echo $version | cut -d. -f2)
patch=$(echo $version | cut -d. -f3)

if [ $# -eq 1 ]; then
  patch=$((patch+1))
elif [ $# -gt 1 ]; then
  minor=$((minor+1))
  patch=0
fi

new_version="v${major}.${minor}.${patch}"

echo $new_version > version.txt