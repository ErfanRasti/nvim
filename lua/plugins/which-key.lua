return {
  "folke/which-key.nvim",
  opts = {
    preset = "helix",
  },
  config = function(_, opts)
    require("which-key").setup(opts)
    require("which-key").add({
      -- When remap = true, f another mapping exists for <Esc>, that mapping will be triggered when you press jjj.
      --  If remap = false, Neovim will use the literal meaning of <Esc>, ignoring any other mappings for <Esc>.
      -- <cmd> tells Neovim to execute the following command in command-line mode (like typing : in normal mode).
      --  <cr> stands for "carriage return" (i.e., pressing Enter)
      {
        "jjj",
        "<Esc>",
        mode = "i",
        desc = "Back to normal mode",
        remap = true,
        icon = "󰌌",
      },
            {
        "<leader>at",
        "<cmdCopilot toggle<cr>",
        mode = "n",
        desc = "Toggle Copilot",
        remap = true,
      },
    })
  end,
}
