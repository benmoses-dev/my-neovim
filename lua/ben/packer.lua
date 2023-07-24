-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Find files and content across project
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Syntax highlighting
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use("nvim-treesitter/nvim-treesitter-context")

    use('nvim-treesitter/playground')

    use("windwp/nvim-autopairs")

    use("lukas-reineke/indent-blankline.nvim")

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Bookmark commonly used files
    use('ThePrimeagen/harpoon')

    -- Complete undo history including branches
    use('mbbill/undotree')

    -- Git integration
    use('tpope/vim-fugitive')
    use('airblade/vim-gitgutter')

    -- Language server support
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim',          run = ":MasonUpdate" },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            { "rafamadriz/friendly-snippets" },
        }
    }

    use('github/copilot.vim')

    -- Rust utilities
    use('simrat39/rust-tools.nvim')

    -- Themes
    use('folke/tokyonight.nvim')
    use('rebelot/kanagawa.nvim')

    -- File explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
end)
