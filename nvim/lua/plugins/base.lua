return {
  {
    'akinsho/toggleterm.nvim', version = "*", config = true
  },
  -- nvim v0.8.0
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>g", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    config = true
  },
  {
  "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "racket" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
          fold = { enable = true },
        })
    end
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
  },
  { 
    "folke/which-key.nvim", 
    event = "VeryLazy",
    opts = {
    },
    keys = { 
       {
         "<leader>?",
         function()
           require("which-key").show({ global = true })
         end,
         desc = "Buffer Local Keymaps (which-key)",
       },
    },
  },   
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8'
  },
  {
    "nvim-tree/nvim-web-devicons", lazy = true 
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = 
      {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
      }
  },
}
