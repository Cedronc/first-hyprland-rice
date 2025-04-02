-- vim.keymap.set('n', '<leader>ts', "<cmd>TermExec cmd='git status' direction=float<cr>", {desc = "Open terminal with git status"} )
vim.keymap.set('n', '<leader>tf', "<cmd>ToggleTerm direction=float<cr>", {desc = "Open Floating Terminal"} )

require("toggleterm").setup{
  shade_terminals = false,
}
