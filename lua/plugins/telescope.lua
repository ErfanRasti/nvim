return {
  {
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
    },
  },
}
