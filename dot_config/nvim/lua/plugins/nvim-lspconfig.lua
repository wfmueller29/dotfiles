return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "williamboman/mason.nvim", config = true },
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()
        vim.diagnostic.config({
            virtual_text = {
                spacing = 4,
                prefix = '●', -- or '>>', '■', etc.
            },
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })
    end,
}
