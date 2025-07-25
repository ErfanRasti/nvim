-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

-- vim.g.markdown_fenced_languages = {
--   "html",
--   "python",
--   "ruby",
--   "vim",
--   "bash",
--   "fish",
--   "shell",
--   -- Add more languages as needed
-- }

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10
