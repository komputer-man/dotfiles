#!/bin/bash

# Skript zum Kopieren von Dotfiles an die richtigen Orte

# Definiere die Quell- und Zielpfade
REPO_ROOT=$(pwd)  # Setze den aktuellen Arbeitsordner als Root des Repos

# Kopiere die .bashrc
cp "$REPO_ROOT/.bashrc" "~/.bashrc"

# Kopiere die NixOS-Konfiguration
sudo cp "$REPO_ROOT/etc/nixos/configuration.nix" "/etc/nixos/"

sudo nixr

# Kopiere die Sway-Konfiguration
mkdir -p ~/.config/sway  # Stelle sicher, dass das Zielverzeichnis existiert
cp "$REPO_ROOT/config/sway/config" "~/.config/sway/"



echo "Dotfiles wurden erfolgreich kopiert."