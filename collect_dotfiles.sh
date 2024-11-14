#!/bin/sh

# Collect DotFiles
REPO_ROOT=$(pwd)
sudo cp ~/.bashrc  "$REPO_ROOT/"
sudo cp /etc/nixos/configuration.nix "$REPO_ROOT/etc/nixos/"
sudo cp ~/.config/sway/* "$REPO_ROOT/config/sway/"