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

      -- Add or skip cursor above/below the main cursor.
      {
        "<A-up>",
        function()
          mc.lineAddCursor(-1)
        end,
        desc = "Add cursor above",
        mode = { "n", "x" },
        icon = "󰞙",
      },
      {
        "<A-down>",
        function()
          mc.lineAddCursor(1)
        end,
        desc = "Add cursor below",
        mode = { "n", "x" },
        icon = "󰞖",
      },
      {
        "<A-S-up>",
        function()
          mc.lineSkipCursor(-1)
        end,
        desc = "Skip adding cursor above",
        mode = { "n", "x" },
        icon = "󰄿",
      },
      {
        "<A-S-down>",
        function()
          mc.lineSkipCursor(1)
        end,
        desc = "Skip adding cursor below",
        mode = { "n", "x" },
        icon = "󰄼",
      },

      -- Add or skip adding a new cursor by matching word/selection
      {
        "<A-left>",
        function()
          mc.mathAddCursor(1)
        end,
        desc = "Add cursor at next match",
        mode = { "n", "x" },
        icon = "󰒭",
      },
      {
        "<A-right>",
        function()
          mc.mathAddCursor(-1)
        end,
        desc = "Add cursor at previous match",
        mode = { "n", "x" },
        icon = "󰒮",
      },
      {
        "<A-S-right>",
        function()
          mc.mathSkipCursor(1)
        end,
        desc = "Skip next match",
        mode = { "n", "x" },
        icon = "󰔰",
      },
      {
        "<A-S-left>",
        function()
          mc.mathSkipCursor(-1)
        end,
        desc = "Skip previous match",
        mode = { "n", "x" },
        icon = "󰶢",
      },
      -- Disable and enable cursors.
      {
        "<C-q>",
        mc.toggleCursor,
        desc = "Toggle multicursor mode",
        mode = { "n", "x" },
        icon = "",
      },
    })
    -- Add and remove cursors with control + left click.
    set("n", "<c-leftmouse>", mc.handleMouse, { desc = "Add cursor at mouse click" })
    set("n", "<c-leftdrag>", mc.handleMouseDrag, { desc = "Add cursors with mouse drag" })
    set("n", "<c-leftrelease>", mc.handleMouseRelease, { desc = "Finish mouse cursor selection" })

    -- Mappings defined in a keymap layer only apply when there are
    -- multiple cursors. This lets you have overlapping mappings.
    mc.addKeymapLayer(function(layerSet)
      -- Select a different cursor as the main one.
      layerSet({ "n", "x" }, "<left>", mc.prevCursor, { desc = "Select previous cursor" })
      layerSet({ "n", "x" }, "<right>", mc.nextCursor, { desc = "Select next cursor" })

      -- Delete the main cursor.
      layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor, { desc = "Delete current cursor" })

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
