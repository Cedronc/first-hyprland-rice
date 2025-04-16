return {
  {
    'akinsho/toggleterm.nvim', version = "*", config = true
  },
  {
    "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- for example
      enabled = true,  -- if you want to enable the plugin
      message_template = " <summary> • <date> • <author> • <<sha>>",
      date_format = "%m-%d-%Y %H:%M:%S",
      virtual_text_column = 1, 
    },
    keys = {
      { "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Toggle Git Blame" }
    }
  },
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
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
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
