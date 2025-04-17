return {
  {
    'jedrzejboczar/possession.nvim',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').load_extension('possession')
      require("possession").setup({
        autosave = false,
        commands = {
          save = 'SSave',
          load = 'SLoad',
          delete = 'SDelete',
          list = 'SList',
        },
        telescope = {
          previewer = {
            enabled = true,
            previewer = 'pretty', -- or 'raw' or fun(opts): Previewer
            wrap_lines = true,
            include_empty_plugin_data = false,
            cwd_colors = {
              cwd = 'Comment',
              tab_cwd = { '#cc241d', '#b16286', '#d79921', '#689d6a', '#d65d0e', '#458588' }
            }
          },
        },
        hooks = {
          before_save = function(name) return {} end,
          after_save = function(name, user_data, aborted) end,
          before_load = function(name, user_data) return user_data end,
          after_load = function(name, user_data) end,
        },
      })
    end,
    keys = {
      { "<leader>ps", "<cmd>SSave<cr>", desc = "Save session" },
      { "<leader>pl", "<cmd>Telescope possession list<cr>", desc = "Load session" },
      { "<leader>pd", "<cmd>SDelete<cr>", desc = "Delete session" },
      { "<leader>pf", "<cmd>SList<cr>", desc = "Show current session" },
    }
  },

}
