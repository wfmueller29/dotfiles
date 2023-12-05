-- This is to install and use lazy vim
--

-- This file can be loaded by calling `lua require('plugins')` from your init.vim


require('lazy').setup({
    -- File navigation
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    'theprimeagen/harpoon',
    'mbbill/undotree',

    -- LSP
    --- Uncomment these if you want to manage LSP servers from neovim
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    "jalvesaq/Nvim-R",
    "christoomey/vim-tmux-navigator",

    -- Git
    'lewis6991/gitsigns.nvim',
    'tpope/vim-fugitive',

    -- Colorschemes
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { 'rose-pine/neovim', name = 'rose-pine' },
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}, },
    'NvChad/nvim-colorizer.lua',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },


    -- Keybinds
    'tpope/vim-surround',
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    {
        'tummetott/unimpaired.nvim',
        config = function()
            require('unimpaired').setup {
                -- add any options here or leave empty
            }
        end
    },
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },

})
