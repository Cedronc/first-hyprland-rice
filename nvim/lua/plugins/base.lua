return {
  {
    'akinsho/toggleterm.nvim', version = "*", config = true
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
