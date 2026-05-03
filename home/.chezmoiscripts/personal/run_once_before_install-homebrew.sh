#!/bin/bash

if command -v brew > /dev/null 2>&1; then
    echo "Found Homebrew."
    exit 0
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi