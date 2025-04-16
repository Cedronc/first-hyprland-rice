-- Which-Key options
local wk = require("which-key")
wk.add({
  { "<leader>f", group = "File" }, -- group
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>fn", desc = "New File" },
  -- Oil
  { "<leader>e", 
    function() 
      require("oil").toggle_float() end,
    desc = "File Explorer" 
  },
  -- Toggle Term
  { "<leader>p", group = "Session" },

  -- Other
  { "<leader>w", proxy = "<c-w>", group = "Windows" }, -- proxy to window mappings
  { "<leader>q", "<cmd>wq<cr>" }, 
  { "<leader>s", "<cmd>wa<cr>" }, 
  { "<leader>b", group = "Buffers", expand = function()
      return require("which-key.extras").expand.buf()
    end
  }
})



