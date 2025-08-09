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
          "CursorLine:PmenuSel",
          "Search:None",
        }, ","),
      },
      documentation = {
        border = "rounded",
        winblend = 0,
        winhighlight = table.concat({
          "Normal:CmpDoc",
          "FloatBorder:CmpDocBorder",
          "CursorLine:PmenuSel",
          "Search:None",
        }, ","),
      },
    },
  },
}
