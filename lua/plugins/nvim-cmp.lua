return {
  "hrsh7th/nvim-cmp",

  opts = {
    window = {
      completion = {
        border = "rounded",
        winblend = 0,
        winhighlight = table.concat({
          "Normal:CmpPmenu",
          "FloatBorder:CmpPmenuBorder",
          "CursorLine:CmpPmenuSel",
          "Search:None",
        }, ","),
      },
      documentation = {
        border = "rounded",
        winblend = 0,
        -- winhighlight = table.concat({
        --   "Normal:CmpDoc",
        --   "FloatBorder:CmpDocBorder",
        --   "CursorLine:CmpPmenuSel",
        --   "Search:None",
        -- }, ","),
      },
    },
  },
  -- config = function(_, opts)
  --   require("cmp").setup(opts)
  --   -- vim.o.pumblend = 0
  --   -- apply (and re-apply) our transparent highlights
  --   local function set_cmp_hl()
  --     -- transparent insides
  --     vim.api.nvim_set_hl(0, "CmpPmenu", { bg = "NONE" })
  --     vim.api.nvim_set_hl(0, "CmpPmenuSel", { bg = "NONE", bold = true })
  --     vim.api.nvim_set_hl(0, "CmpDoc", { bg = "NONE" })
  --
  --     -- match tokyonight’s border color, keep bg transparent
  --     local fb = vim.api.nvim_get_hl(0, { name = "FloatBorder" })
  --     local border_fg = fb and fb.fg
  --       or vim.api.nvim_get_hl(0, { name = "Comment" }).fg
  --     vim.api.nvim_set_hl(0, "CmpPmenuBorder", { fg = border_fg, bg = "NONE" })
  --     vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = border_fg, bg = "NONE" })
  --
  --     -- if anything else sneaks in, make floats transparent too
  --     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  --     vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" }) -- some plugins link back to this
  --   end
  --
  --   set_cmp_hl()
  --   vim.api.nvim_create_autocmd("ColorScheme", { callback = set_cmp_hl })
  -- end,
}
