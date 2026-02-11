-- Lazy.vim
require("config.lazy")

-- Load snippets
require("luasnip.loaders.from_vscode").lazy_load()

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
