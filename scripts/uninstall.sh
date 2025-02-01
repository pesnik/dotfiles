#!/bin/bash

# Exit on error
set -e

# Variables
DOTFILES_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"
STOW_PACKAGES=("nvim")

# Uninstall configurations using GNU Stow
echo "Uninstalling configurations..."
for package in "${STOW_PACKAGES[@]}"; do
    echo "Removing $package..."
    stow -D -t "$HOME" -v "$package"
done

# Restore backed-up files
echo "Restoring backed-up files..."
if [[ -d "$BACKUP_DIR" ]]; then
    rsync -av "$BACKUP_DIR/" "$HOME/"
    echo "Backed-up files restored from $BACKUP_DIR."
else
    echo "No backup directory found at $BACKUP_DIR."
fi

echo "Uninstallation complete! Your configurations have been removed."
