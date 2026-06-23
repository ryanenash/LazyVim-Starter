-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.title = true
vim.opt.titlestring = "%t - %{fnamemodify(getcwd(), ':t')} - nvim"

-- Use tsgo (TypeScript-Go native preview) instead of vtsls for TS/JS LSP.
-- Disabled: tsgo tracks the TS 7 roadmap and flagged tsconfig options
-- (baseUrl, non-relative paths) that are still valid on the project's TS 5.8.
-- vim.g.lazyvim_ts_lsp = "tsgo"
vim.diagnostic.config({
  float = {
    border = "rounded",
  },
})
