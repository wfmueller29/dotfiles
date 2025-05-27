require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pyright" },
    handlers = {
        -- Default handler for servers without custom config
        function(server_name)
            require("lspconfig")[server_name].setup({})
        end,

        -- Custom server config overrides
        ["lua_ls"] = function()
            print("lua_ls handler is running!")
            require("config.lsp.lua_ls")
        end,

    },
})
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
vim.keymap.set("i", "<C-h>", function()
    vim.lsp.buf.signature_help()
end, { desc = "LSP Signature Help", silent = true })
vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover()
end, { desc = "LSP Hover", silent = false })
