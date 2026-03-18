-- ⚠️ NOT IN KICKSTART.NVIM: This entire file does not exist in kickstart.nvim
-- autoformat.lua
--
-- Conform.nvim for formatting with support for both LSP and standalone formatters

return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      -- Add other formatters as needed
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
