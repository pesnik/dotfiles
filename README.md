# dotfiles

My personal dotfiles for setting up and maintaining my development environment across machines.

## 🎯 Purpose

This repository helps me:
- Track changes to my configuration files
- Quickly set up new development machines
- Share my setup with others
- Maintain consistency across different environments
- Document my customizations and preferences

## 📁 Directory Structure

The repository structure mirrors the home directory layout using GNU Stow:

```
dotfiles/
├── zsh/
│   └── .zshrc                 # Links to ~/.zshrc
├── nvim/
│   └── .config/
│       └── nvim/              # Links to ~/.config/nvim/
│           ├── init.lua
│           └── lua/
├── git/
│   ├── .gitconfig            # Links to ~/.gitconfig
│   └── .gitignore_global     # Links to ~/.gitignore_global
├── tmux/
│   └── .tmux.conf           # Links to ~/.tmux.conf
├── alacritty/
│   └── .config/
│       └── alacritty/       # Links to ~/.config/alacritty/
├── kitty/
│   └── .config/
│       └── kitty/          # Links to ~/.config/kitty/
└── scripts/
    ├── install.sh
    └── uninstall.sh
```

## 🗂️ Common Configuration Locations

Here's where various tools expect their configuration files:

- Shell:
  - Zsh: `~/.zshrc`
  - Bash: `~/.bashrc`
  - Common aliases: `~/.aliases`

- Editors:
  - Neovim: `~/.config/nvim/`
  - Vim: `~/.vimrc`
  - VSCode: `~/.config/Code/User/` (Linux) or `~/Library/Application Support/Code/User/` (macOS)

- Terminal:
  - Tmux: `~/.tmux.conf`
  - Alacritty: `~/.config/alacritty/`
  - Kitty: `~/.config/kitty/`

- Git:
  - Git config: `~/.gitconfig`
  - Global ignore: `~/.gitignore_global`

- Window Managers:
  - i3: `~/.config/i3/`
  - sway: `~/.config/sway/`

## 🚀 Installation

1. Clone this repository:
```bash
git clone https://github.com/pesnik/dotfiles.git ~/.dotfiles
```

2. Install GNU Stow:
```bash
# On Ubuntu/Debian
sudo apt-get install stow

# On macOS
brew install stow
```

3. Run the installation script:
```bash
cd ~/.dotfiles
./scripts/install.sh
```

## 📋 How It Works

We use GNU Stow to manage symlinks. For each tool:

1. Configurations are stored in the repo mirroring their final location
2. Stow creates symlinks from your home directory to the repo

Example for Neovim:
```
dotfiles/nvim/.config/nvim/init.lua -> ~/.config/nvim/init.lua
```

## 🔄 Adding New Configurations

1. Create directory structure matching the target location:
```bash
# For a tool that stores config in ~/.config/tool/
mkdir -p ~/dotfiles/tool/.config/tool/

# For a tool that stores config directly in home directory
mkdir -p ~/dotfiles/tool/
```

2. Move your configuration:
```bash
# For ~/.config tools
mv ~/.config/tool/* ~/dotfiles/tool/.config/tool/

# For home directory configs
mv ~/.toolrc ~/dotfiles/tool/.toolrc
```

3. Use Stow to create symlinks:
```bash
cd ~/dotfiles
stow tool
```

4. Add to version control:
```bash
git add tool/
git commit -m "Add tool configuration"
```

## 📝 Maintenance

- Update configurations:
```bash
cd ~/.dotfiles
git pull
./scripts/install.sh
```

- Remove stowed configurations:
```bash
cd ~/.dotfiles
stow -D tool
```

- Restow configurations (useful after adding new files):
```bash
cd ~/.dotfiles
stow -R tool
```

## ⚠️ Troubleshooting

- If Stow reports conflicts:
  1. Back up existing configuration
  2. Remove the conflicting file
  3. Try stowing again

- If symlinks aren't working:
  1. Check if target directories exist
  2. Verify file permissions
  3. Run `stow -v tool` for verbose output

## 🤝 Contributing

While these are my personal dotfiles, suggestions are welcome! Feel free to:
- Open issues for discussions
- Suggest improvements
- Share your own configurations
- Report bugs in the installation process

## 📜 License

This repository is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*Inspired by the dotfiles community. Feel free to use and modify these configurations for your own needs.*
