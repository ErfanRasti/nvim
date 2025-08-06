return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          no_ignore = true,
          no_ignore_parent = true,
          follow = true,
          hidden = true,
        })
      end,
      desc = "Find Files (including gitignored)",
    },
    {
      "<leader>sg",
      function()
        require("telescope.builtin").live_grep({
          additional_args = function()
            return { "--hidden", "--no-ignore", "--follow" } -- Flat list
          end,
        })
      end,
      desc = "Grep Text (all)",
    },
  },
}
