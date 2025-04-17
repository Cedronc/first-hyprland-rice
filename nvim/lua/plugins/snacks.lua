--- Snippets 
--          function()
--            local in_git = Snacks.git.get_root() ~= nil
--            local cmds = {
--              {
--                title = "Open Issues",
--                cmd = "gh issue list -L 3",
--                key = "i",
--                action = function()
--                  vim.fn.jobstart("gh issue list --web", { detach = true })
--                end,
--                icon = " ",
--                height = 3,
--              },

  -----------------------------------------------------------------------------
  -- 🎨 Snacks (QoL plugins)
  -- https://github.com/folke/snacks.nvim?tab=readme-ov-file
  -----------------------------------------------------------------------------
return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {

      animate = {
        enabled = true,
        stages = {
          open = { "fade_in", "slide_in_top" },
          close = { "fade_out", "slide_out_bottom" },
        },
        duration = {
          open = 300,   -- in milliseconds
          close = 200,  -- in milliseconds
        },
        easing = {
          open = "out_cubic",
          close = "in_quad",
        },
        fps = 60, -- Higher = smoother
        exclude_filetypes = { "lazy", "TelescopePrompt", "nofile" }, -- don't animate here
      },
      bigfile = { enabled = true },
      dashboard = {
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          {
            pane = 2,
            icon = " ",
            desc = "Browse Repo",
            padding = 1,
            key = "b",
            action = function()
              Snacks.gitbrowse()
            end,
          },
          { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },

          -- Git Stuff in its own pane (pane 3)
          function()
            local in_git = Snacks.git.get_root() ~= nil
            local cmds = {
              {
                icon = " ",
                title = "Git Status",
                cmd = "git --no-pager diff --stat -B -M -C",
                height = 10,
              },
            }
            return vim.tbl_map(function(cmd)
              return vim.tbl_extend("force", {
                pane = 2,
                section = "terminal",
                enabled = in_git,
                padding = 1,
                ttl = 5 * 60,
                indent = 3,
              }, cmd)
            end, cmds)
          end,

          { section = "startup" }, -- This was missing a comma before it
        },
      },
      lazygit = { enabled = true },
      quickfile = { enabled = true },
      -- scope = { enabled = true },
    },
    keys = {
      -- git
      { "<leader>gB", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
      { "<leader>gL", function() Snacks.picker.git_log() end, desc = "Git Log" },
      { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
      { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
      { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
      { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
    },
  },
}
