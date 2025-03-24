-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd([[colorscheme gruvbox]])
vim.o.background = "dark" -- or "light" for light mode

vim.cmd("set relativenumber")
vim.cmd("set hlsearch")
vim.cmd("set showcmd")
vim.cmd("set incsearch")
vim.cmd("set history=1000")
vim.cmd("set cursorline")
vim.cmd("set nobackup")
vim.cmd("set clipboard+=unnamedplus")

vim.cmd("set wildmenu")
vim.cmd("set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx")

vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set autoindent")
vim.cmd("set copyindent")
vim.cmd("set expandtab")
vim.cmd("set noshiftround")

-- Which-Key options
local wk = require("which-key")
wk.add({
  { "<leader>f", group = "File" }, -- group
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>e", "<cmd>Oil<cr>", desc = "File Explorer"},
  { "<leader>fn", desc = "New File" },
  { "<leader>w", proxy = "<c-w>", group = "Windows" }, -- proxy to window mappings
  { "<leader>b", group = "Buffers", expand = function()
      return require("which-key.extras").expand.buf()
    end
  }
})


