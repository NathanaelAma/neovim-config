# Neovim Configuration Repository

<div align="center">

[![wakatime](https://wakatime.com/badge/user/018cc971-633c-4eeb-9cce-333cea6ef929/project/018d9c31-be33-49de-9285-8a95643ac0ff.svg?style=for-the-badge)](https://wakatime.com/badge/user/018cc971-633c-4eeb-9cce-333cea6ef929/project/018d9c31-be33-49de-9285-8a95643ac0ff)
[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.9.5-blueviolet.svg?style=for-the-badge&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)
[![License](https://img.shields.io/github/license/NathanaelAma/neovim-config?style=for-the-badge&color=blue)](LICENSE)
</div>

This repository contains a highly customizable and feature-rich configuration for Neovim. It is designed to provide an enhanced development experience with a focus on productivity and usability.

## Features

- **Language Server Protocol (LSP) support** with [neovim/nvim-lspconfig](https://www.github.com/neovim/nvim-lspconfig)
- **Code autocompletion** with [hrsh7th/cmp-nvim-lsp](https://www.github.com/hrsh7th/cmp-nvim-lsp)
- **Git integration** with [kdheepak/lazygit.nvim](https://www.github.com/kdheepak/lazygit.nvim)
- **Code formatting** with [stylua](https://www.github.com/JohnnyMorganz/StyLua)
- **File navigation** with [nvim-telescope/telescope.nvim](https://www.github.com/nvim-telescope/telescope.nvim)
- **Theme management** with [zaldih/themery.nvim](https://www.github.com/zaldih/themery.nvim)
- **Statusline** with [nvim-lualine/lualine.nvim](https://www.github.com/nvim-lualine/lualine.nvim)
- **Bufferline** with [akinsho/nvim-bufferline.lua](https://www.github.com/akinsho/nvim-bufferline.lua)

## Installation

Clone this repository into your Neovim configuration directory. The repository includes an init.lua file that bootstraps the configuration and loads all plugins.

```sh
git clone https://github.com/NathanaelAma/neovim-config ~/.config/nvim
```

After cloning the repository, open Neovim and the plugins will be installed automatically.

## Usage

The configuration is organized into separate files and folders for easy navigation and customization. Here are some key ones:

- `init.lua`: The main configuration file that loads all plugins and settings.
- `lua/plugins/`: Contains the configuration for each plugin, seperated by category.
- `lua/configs/`: Contains the configuration for various plugins.
- `lua/themes/`: Contains the themes that can be used with the configuration.
- `lua/autocmds.lua`: Contains autocommands that are triggered when certain events occur.
- `lua/mappings.lua`: Contains key mappings for various actions.
- `lua/options.lua`: Contains global settings for Neovim.

## Changelog

See the [CHANGELOG](CHANGELOG.md) file for details.

## Customization

You can customize the configuration to suit your needs by editing the relevant Lua files in the lua/ directory.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
