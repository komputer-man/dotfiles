#!/bin/sh

# Skript zum Kopieren von Dotfiles an die richtigen Orte

# Definiere die Quell- und Zielpfade
REPO_ROOT=$(pwd)  # Setze den aktuellen Arbeitsordner als Root des Repos

# Kopiere die .bashrc
sudo cp "$REPO_ROOT/.bashrc" ~/.bashrc

# Kopiere die NixOS-Konfiguration
sudo cp "$REPO_ROOT/etc/nixos/configuration.nix" /etc/nixos/

sudo nixos-rebuild switch

# Kopiere die Sway-Konfiguration
mkdir -p ~/.config/sway  # Stelle sicher, dass das Zielverzeichnis existiert
sudo cp "$REPO_ROOT/config/sway/config" ~/.config/sway/

echo "Dotfiles wurden erfolgreich kopiert."