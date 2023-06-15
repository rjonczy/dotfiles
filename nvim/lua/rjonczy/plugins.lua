local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]


-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- My plugins comes below --
  use 'wbthomason/packer.nvim' -- Packer can manage itself 
  use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"  -- Useful lua functions used ny lots of plugins
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- autopairs (integrates with cmp and treesitter)
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {

      }
    end
  }

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    }
  }

  -- TODO comments
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  -- color schemes
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- vim.cmd.colorscheme "catppuccin"

  use {'morhetz/gruvbox' }

  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  use 'folke/tokyonight.nvim'

  use 'christoomey/vim-tmux-navigator'


  -- treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use {
	  'nvim-treesitter/playground'
  }

  -- pretty cool plugin from theprimeagen to switch between bookmarked files
  use {
	  'theprimeagen/harpoon'
  }

  -- git related plugins
  use {
	  'mbbill/undotree'
  }
  use {
    'tpope/vim-fugitive'
  }
  use {
    'lewis6991/gitsigns.nvim'
  }

  -- lsp related plugins
  use {'VonHeikemen/lsp-zero.nvim', branch = 'v2.x'}
  use {'williamboman/mason.nvim'}
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/mason-lspconfig.nvim'}
  use {'simrat39/rust-tools.nvim'}

  -- cmp plugins
  use "hrsh7th/nvim-cmp"         -- The completion plugin
  use "hrsh7th/cmp-buffer"       -- buffer completions
  use "hrsh7th/cmp-path"         -- path completions
  use "hrsh7th/cmp-cmdline"      -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp"     -- required by lsp
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'
  use "saadparwaiz1/cmp_luasnip" -- snippet completions

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use


  -- Useful plugin to show you pending keybinds.
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  -- status bar/line --
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end


end)
