return {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
        suppressed_dirs = { "~/", "~/projects", "~/Downloads", "/" },
        -- log_level = 'debug',
        pre_restore_cmds = {
            function()
                local pickers = Snacks.picker.get({ source = "explorer" })
                if pickers and pickers[1] then
                    pickers[1]:close()
                end
            end,
        },
    },
}
