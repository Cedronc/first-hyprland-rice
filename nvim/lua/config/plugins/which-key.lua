-- Which-Key options
local wk = require("which-key")
wk.add({
  -- Groups
  { "<leader>f", group = "Telescope" },
  { "<leader>n", group = "Notify" },
  -- Oil
  -- Toggle Term
  { "<leader>p", group = "Session" },

  -- Random Groups
  { "<leader>g", group = "Git" },
})
