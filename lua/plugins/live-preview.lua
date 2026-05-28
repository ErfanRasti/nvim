return {
  "brianhuster/live-preview.nvim",
  lazy = true,
  -- Start the plugin only in these formats.
  ft = { "markdown", "html", "asciidoc", "svg" },

  dependencies = {
    -- You can choose one of the following pickers
    -- "nvim-telescope/telescope.nvim",
    -- "ibhagwan/fzf-lua",
    -- "echasnovski/mini.pick",
    "folke/snacks.nvim",
  },
  keys = function()
    local wk = require("which-key")

    wk.add({
      {
        "<leader>cl",
        group = "Live Preview",
        desc = "Live Preview Commands",
      },
      {
        "<leader>cls",
        "<cmd>LivePreveiw start<cr>",
        desc = "Start Live Preview",
        mode = { "n", "v" },
      },
      {
        "<leader>clp",
        "<cmd>LivePreveiw pick<cr>",
        desc = "Pick File to Preview",
        mode = { "n", "v" },
      },
      {
        "<leader>clc",
        "<cmd>LivePreveiw close<cr>",
        desc = "Close Live Preview",
        mode = { "n", "v" },
      },
    })
  end,
}
