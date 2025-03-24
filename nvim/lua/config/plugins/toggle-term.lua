vim.keymap.set('n', '<leader>ts', "<cmd>TermExec cmd='git status' direction=float<cr>", {desc = "Open terminal with git status"} )

require("toggleterm").setup{
  shade_terminals = false,
}
