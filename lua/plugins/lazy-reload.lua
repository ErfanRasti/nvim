return {
  "MaximilianLloyd/lazy-reload.nvim",
  enabled = false,
  lazy = true,
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
  },
  config = function(_, opts)
    require("lazy-reload").setup(opts) -- initialize the plugin

    local wk = require("which-key")
    wk.add({

      { "<C-S-r>", "<cmd>lua require('lazy-reload').feed()<cr>", desc = "Reload Plugin", icon = "󰑓" },
    })
  end,
}
