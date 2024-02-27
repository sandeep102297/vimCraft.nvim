# vimCraft.nvim


### Introduction

A starting point for Neovim that is:
Why Neovim ?

* Best Community Support
* Modern Architecture
* Well Documented
* Plugin Ecosystem
* Customization
* Cross-Platform
* Performance

This repo is meant to be used by **YOU** to begin your Neovim journey; remove the things you don't use and add what you miss.

Distribution Alternatives:
- [LazyVim](https://www.lazyvim.org/): A delightful distribution maintained by @folke (the author of lazy.nvim, the package manager used here)

### Installation

Requirements:
* Make sure to review the readmes of the plugins if you are experiencing errors. In particular:
  * [ripgrep](https://github.com/BurntSushi/ripgrep#installation) is required for multiple [telescope](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies) pickers.
* See [Windows Installation](#Windows-Installation) if you have trouble with `telescope-fzf-native`

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |

Clone vimCraft.nvim:

- on Linux and Mac
```sh
git clone https://github.com/sandeep102297/vimCraft.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

- on Windows (cmd)
```
git clone https://github.com/sandeep102297/vimCraft.nvim.git %userprofile%\AppData\Local\nvim\ 
```

- on Windows (powershell)
```
git clone https://github.com/sandeep102297/vimCraft.git $env:USERPROFILE\AppData\Local\nvim\ 
```


### Post Installation

Start Neovim

```sh
nvim
```

The `Lazy` plugin manager will start automatically on the first run and install the configured plugins - as can be seen in the introduction video. After the installation is complete you can press `q` to close the `Lazy` UI and **you are ready to go**! Next time you run nvim `Lazy` will no longer show up.

If you would prefer to hide this step and run the plugin sync from the command line, you can use:

```sh
nvim --headless "+Lazy! sync" +qa
```

### Getting Started

See [Effective Neovim: Instant IDE](https://youtu.be/stqUbv-5u2s), covering the previous version. Note: The install via init.lua is outdated, please follow the install instructions in this file instead. An updated video is coming soon.

### Configuration And Extension

* Inside of your copy, feel free to modify any file you like! It's your copy!
* Feel free to change any of the default options in `init.lua` to better suit your needs.
* For adding plugins, there are 3 primary options:
  * Add new plugins in `lua/plugins/*`. Add your own plugin file which returns the configuration of that plugin which will be autosourced by lazy.nvim.
  * To change vim maps make changes in file `lua/vim_maps.lua`
  * To add any key bindings add it in file `lua/utils.lua`
  * To add any auto cmds add it in directory `lua/augroups`
  * To disable unnecessary plugin just add `cond = false` in the plugin file. 

To know more about plugin additions please visit [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

#### Example: Adding an autopairs plugin

In the file: `lua/plugins/autopairs.lua`, add:

```lua
-- File: lua/plugins/autopairs.lua

return {
  "windwp/nvim-autopairs",
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require("nvim-autopairs").setup {}
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end,
}
```

This will automatically install [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) and enable it on startup. For more information 
See documentation for [folke/lazy.nvim](https://github.com/folke/lazy.nvim).

### Inspired From
* [nvim-lua](https://github.com/nvim-lua/kickstart.nvim)
* [cwebster2/vim](https://github.com/cwebster2/vim)
