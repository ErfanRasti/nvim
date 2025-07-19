return {
    {
        "folke/which-key.nvim",
        opts = {
            preset = "helix",
        },
        config = function(_, opts)
            require("which-key").setup(opts)
            require("which-key").add({
                -- When remap = true, f another mapping exists for <Esc>, that mapping will be triggered when you press jjj.
                --  If remap = false, Neovim will use the literal meaning of <Esc>, ignoring any other mappings for <Esc>.
                {
                    "jjj",
                    "<Esc>",
                    desc = "Back to normal mode",
                    mode = "i",
                    remap = true,
                    icon = "󰌌",
                },
                {
                    "<leader>gc",
                    function()
                        vim.cmd("AICommit")
                    end,
                    desc = "Commit using AI",
                    mode = "n",
                    remap = true,
                },
                {
                    "<leader>at",
                    function()
                        vim.cmd("Copilot toggle")
                    end,
                    desc = "Toggle Copilot",
                    mode = "n",
                    remap = true,
                },
            })
        end,
    },
}
