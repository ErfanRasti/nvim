return {
    "okuuva/auto-save.nvim",
    -- enabled = false,
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    lazy = true,
    opts = {
        enabled = true,
    },
}
