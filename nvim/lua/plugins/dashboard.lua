return {
  {
    'jedrzejboczar/possession.nvim',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("possession").setup({
        autosave = {
          current = true,  -- autosave when changing sessions
          tmp = true,
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
      { "<leader>ps", "<cmd>PossessionSave<cr>", desc = "Save session" },
      { "<leader>pl", "<cmd>PossessionLoad<cr>", desc = "Load session" },
      { "<leader>pd", "<cmd>PossessionDelete<cr>", desc = "Delete session" },
      { "<leader>pf", "<cmd>PossessionShow<cr>", desc = "Show current session" },
    }
  },

}
