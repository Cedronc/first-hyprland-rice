local set = vim.keymap.set
local opts = { noremap = true, silent = false }

vim.cmd('nnoremap <Space> <NOP>')
set("n", "<leader>w", "<cmd>wa<cr>", opts)
set("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)
