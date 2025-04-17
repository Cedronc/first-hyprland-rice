return {
  -----------------------------------------------------------------------------
  -- 📦 Fidget.nvim (LSP Progress)
  -----------------------------------------------------------------------------
  {
    'j-hui/fidget.nvim',
    tag = 'v1.6.1',
    config = function()
      require('fidget').setup {}
    end
  },

  -----------------------------------------------------------------------------
  -- 🌀 Indent Scope (Animated Indent Lines)
  -----------------------------------------------------------------------------
  {
    'echasnovski/mini.indentscope',
    version = '*',
    config = function()
      require('mini.indentscope').setup {
        symbol = '│',
        options = { try_as_border = true }
      }
    end
  },

  -----------------------------------------------------------------------------
  -- 🌊 Smooth Scrolling
  -- https://github.com/karb94/neoscroll.nvim
  -----------------------------------------------------------------------------
  {
    "karb94/neoscroll.nvim",
    opts = {},
  },

  -----------------------------------------------------------------------------
  -- 🔔 Notify (Popup Notifications)
  -----------------------------------------------------------------------------
  {
    'rcarriga/nvim-notify',
    config = function()
      vim.notify = require('notify')
      require('notify').setup({ background_color = "#000000" })
    end,
    keys = { 
      {"<leader>ns", "<cmd>Telescope notify<CR>", desc="Search Notifications" },
      {"<leader>nh", function() require("notify").history() end, desc = "Notification History" },
      {"<leader>nc", function() require("notify").clear_history() end, desc = "Clear Notification History" },
    }
  },

  -----------------------------------------------------------------------------
  -- 🔮 Noice (Enhanced UI, Messages, Cmdline)
  -----------------------------------------------------------------------------
  {
    'folke/noice.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {}
    end
  },

  -----------------------------------------------------------------------------
  -- 📊 Lualine (Statusline)
  -----------------------------------------------------------------------------
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'gruvbox',
          section_separators = '',
          component_separators = '',
        },
      }
    end
  },
}

