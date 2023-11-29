-- This is to install and use lazy vim
--

-- This file can be loaded by calling `lua require('plugins')` from your init.vim


require('lazy').setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    --- Uncomment these if you want to manage LSP servers from neovim
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },

    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-surround',
    "jalvesaq/Nvim-R",
    "christoomey/vim-tmux-navigator",
    'tpope/vim-fugitive',
    'NvChad/nvim-colorizer.lua',
    'lewis6991/gitsigns.nvim',

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { 'rose-pine/neovim', name = 'rose-pine' },
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },

    {
        'tummetott/unimpaired.nvim',
        config = function()
            require('unimpaired').setup {
                -- add any options here or leave empty
            }
        end
    },

})
