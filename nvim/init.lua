require("config.lazy")
require("config.keymaps")
require("config.options")

-- Import config files for plugins themself
require("config.plugins.harpoon")
require("config.plugins.oil")
require("config.plugins.which-key")

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup{
  ensure_installed = { "angularls", "ast_grep" },
}

