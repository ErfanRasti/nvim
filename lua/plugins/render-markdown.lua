return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    code = {
      sign = true,
    },
    -- https://github.com/MeanderingProgrammer/render-markdown.nvim/wiki#render-modes
    -- This will prevent rendering while using insert mode.
    render_modes = { "n", "c", "t" },

    -- https://github.com/MeanderingProgrammer/render-markdown.nvim/issues/641
    win_options = { conceallevel = { default = 0 } },
  },
}
