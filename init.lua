-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

-- Eliminar trailing whitespaces al guardar el archivo
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- Set textwidth to 120 characters
vim.opt.textwidth = 120

-- Enable automatic text wrapping for markdown and text files
vim.cmd([[
  autocmd FileType markdown,text setlocal formatoptions+=t
]])

-- Auto format text on save for markdown and text files
vim.cmd([[
  autocmd BufWritePre *.md,*.txt normal! ggVGgq
]])
