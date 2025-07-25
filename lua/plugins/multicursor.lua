return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  lazy = true,
  event = "VeryLazy",
  config = function()
    local mc = require("multicursor-nvim")
    mc.setup()

    local set = vim.keymap.set
    require("which-key").add({

      -- Add or skip cursor above/below the main cursor
      {
        "<A-up>",
        "<cmd>mc.lineAddCursor(-1)<cr>",
        mode = { "n", "x" },
        desc = "Add cursor above",
        icon = "󰞙",
      },
      {
        "<A-down>",
        "<cmd>mc.lineAddCursor(1)<cr>",
        mode = { "n", "x" },
        desc = "Add cursor below",
        icon = "󰞖",
      },
      {
        "<A-S-up>",
        "<cmd>mc.lineSkipCursor(-1)<cr>",
        mode = { "n", "x" },
        desc = "Skip adding cursor above",
        icon = "󰄿",
      },
      {
        "<A-S-down>",
        "<cmd>mc.lineSkipCursor(1)<cr>",
        mode = { "n", "x" },
        desc = "Skip adding cursor below",
        icon = "󰄼",
      },

      -- Add or skip adding a new cursor by matching word/selection
      {
        "<A-left>",
        "<cmd>mc.mathAddCursor(1)<cr>",
        mode = { "n", "x" },
        desc = "Add cursor at next match",
        icon = "󰒭",
      },
      {
        "<A-right>",
        "<cmd>mc.mathAddCursor(-1)<cr>",
        mode = { "n", "x" },
        desc = "Add cursor at previous match",
        icon = "󰒮",
      },
      {
        "<A-S-right>",
        "<cmd>mc.mathSkipCursor(1)<cr>",
        mode = { "n", "x" },
        desc = "Skip next match",
        icon = "󰔰",
      },
      {
        "<A-S-left>",
        "<cmd>mc.mathSkipCursor(-1)<cr>",
        mode = { "n", "x" },
        desc = "Skip previous match",
        icon = "󰶢",
      },
      -- Disable and enable cursors.
      {
        "<C-q>",
        mc.toggleCursor,
        mode = { "n", "x" },
        desc = "Toggle multicursor mode",
        icon = "",
      },
    })
    -- Add and remove cursors with control + left click.
    set(
      "n",
      "<c-leftmouse>",
      mc.handleMouse,
      { desc = "Add cursor at mouse click" }
    )
    set(
      "n",
      "<c-leftdrag>",
      mc.handleMouseDrag,
      { desc = "Add cursors with mouse drag" }
    )
    set(
      "n",
      "<c-leftrelease>",
      mc.handleMouseRelease,
      { desc = "Finish mouse cursor selection" }
    )

    -- Mappings defined in a keymap layer only apply when there are
    -- multiple cursors. This lets you have overlapping mappings.
    mc.addKeymapLayer(function(layerSet)
      -- Select a different cursor as the main one.
      layerSet(
        { "n", "x" },
        "<left>",
        mc.prevCursor,
        { desc = "Select previous cursor" }
      )
      layerSet(
        { "n", "x" },
        "<right>",
        mc.nextCursor,
        { desc = "Select next cursor" }
      )

      -- Delete the main cursor.
      layerSet(
        { "n", "x" },
        "<leader>x",
        mc.deleteCursor,
        { desc = "Delete current cursor" }
      )

      -- Enable and clear cursors using escape.
      layerSet("n", "<esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        else
          mc.clearCursors()
        end
      end, { desc = "Toggle/clear multicursors" })
    end)

    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { reverse = true })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn" })
    hl(0, "MultiCursorMatchPreview", { link = "Search" })
    hl(0, "MultiCursorDisabledCursor", { reverse = true })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
  end,
}
