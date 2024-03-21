return {
    -- Find files and content across project
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        tag = 'v0.9.2',
    },

    "nvim-treesitter/nvim-treesitter-context",

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },

    {
        "eandrju/cellular-automaton.nvim"
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        version = "^3.5.4"
    },

    {
        'numToStr/Comment.nvim',
        tag = "v0.8.0",
        lazy = false
    },

    -- Bookmark commonly used files
    {
        'ThePrimeagen/harpoon',
    },

    -- Complete undo history including branches
    'mbbill/undotree',

    -- Git integration
    'tpope/vim-fugitive',
    'airblade/vim-gitgutter',

    -- Language server support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        lazy = false,
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
            },
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
    },

    'github/copilot.vim',

    -- Themes
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {}
    },
    {
        'rebelot/kanagawa.nvim',
        lazy = false,
        priority = 1000
    },

    -- File explorer
    {
        'nvim-tree/nvim-tree.lua',
        version = "*",
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        }
    }
}
