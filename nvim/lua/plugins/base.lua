return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = 
      {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
      }
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

  -- LSP keymaps
  {
    "williamboman/mason.nvim", 
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- Completion
  {
    "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
    lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
    dependencies = {
      -- main one
      { "ms-jpq/coq_nvim", branch = "coq" },

      
      -- 9000+ Snippets
      { "ms-jpq/coq.artifacts", branch = "artifacts" },

      -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
      -- Need to **configure separately**
      { 'ms-jpq/coq.thirdparty', branch = "3p" }
      -- - shell repl
      -- - nvim lua api
      -- - scientific calculator
      -- - comment banner
      -- - etc
    },
    init = function()
      vim.g.coq_settings = {
        auto_start = true, -- if you want to start COQ at startup
        -- Your COQ settings here
      }
    end,
    config = function()
      -- Your LSP settings here
    end,
  },

  {'nvim-telescope/telescope.nvim', tag = '0.1.8'},

  -- if some code requires a module from an unloaded plugin, it will be automatically loaded.
  -- So for api plugins like devicons, we can always set lazy=true
  { "nvim-tree/nvim-web-devicons", lazy = true },
}
