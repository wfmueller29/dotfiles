return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      python = { "ruff_format", "black" },  -- Use Ruff first, then Black
    },
  },
}

