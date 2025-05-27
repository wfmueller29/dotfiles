-- ~/.config/nvim/lsp/luals.lua

require("lspconfig").lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = vim.split(package.path, ";"),
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
            root_markers = { '.luarc.json', '.luarc.jsonc' },
        },
    },
})
