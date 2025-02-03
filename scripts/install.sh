#!/bin/bash

# Variables
DOTFILES_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"
STOW_PACKAGES=("vim" "nvim" "zsh" "oh-my-zsh" "tmux" "doom")

# Create backup directory
echo "Creating backup directory at $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"

# Pull latest changes from the repository
echo "Pulling latest changes from the dotfiles repository..."
cd "$DOTFILES_DIR"
git pull origin master

# Install configurations using GNU Stow
echo "Installing configurations..."
for package in "${STOW_PACKAGES[@]}"; do
    echo "Setting up $package..."
    # Backup existing files before stowing
    stow -t "$HOME" -v "$package" 2>&1 | grep "LINK" | awk '{print $3}' | while read -r link; do
        if [[ -e "$HOME/$link" && ! -L "$HOME/$link" ]]; then
            echo "Backing up $HOME/$link to $BACKUP_DIR/$link..."
            mkdir -p "$(dirname "$BACKUP_DIR/$link")"
            mv "$HOME/$link" "$BACKUP_DIR/$link"
        fi
    done

    # Stow the package with error handling
    if ! stow -t "$HOME" -R "$package" 2>/dev/null; then
        echo "Warning: Failed to stow $package completely. Continuing with next package..."
    else
        echo "Successfully stowed $package"
    fi
done

echo "Installation complete! Your configurations are now set up."
