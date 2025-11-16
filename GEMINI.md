## Directory Overview

This directory contains a Neovim configuration based on NvChad. It uses `lazy.nvim` for plugin management and is customized with a specific theme, status line, and a set of plugins for formatting, LSP, and syntax highlighting.

## Key Files

*   `init.lua`: The main entry point for the Neovim configuration. It bootstraps `lazy.nvim` and loads the plugins and configuration files.
*   `lua/chadrc.lua`: Contains custom configurations for the UI, theme, and status line.
*   `lua/plugins/init.lua`: Defines the plugins to be used, including `conform.nvim`, `nvim-lspconfig`, and `nvim-treesitter`.
*   `lua/mappings.lua`: Defines custom key mappings.
*   `lua/options.lua`: Sets Neovim options.
*   `lua/autocmds.lua`: Defines autocommands.
*   `custom/`: This directory contains user-specific custom configurations that are not part of the base NvChad setup.

## Usage

This directory is intended to be used as a Neovim configuration. To use it, you would typically clone this repository to `~/.config/nvim` and start Neovim. The `init.lua` file will then be automatically loaded, and it will set up the entire configuration.

## Development Conventions

The configuration is written in Lua and follows the structure of a standard Neovim configuration. It uses `lazy.nvim` for plugin management, so any new plugins should be added to the `lua/plugins/init.lua` file. Custom configurations should be placed in the `custom/` directory to keep them separate from the base NvChad configuration.
