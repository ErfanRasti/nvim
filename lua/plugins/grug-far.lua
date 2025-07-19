return {
  "MagicDuck/grug-far.nvim",
  config = function(_, opts)
    require("grug-far").setup(opts)

    -- Add buffer-local keybinding to toggle --fixed-strings
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("my-grug-far-custom-keybinds", { clear = true }),
      pattern = { "grug-far" },
      callback = function()
        vim.keymap.set({ "n", "i" }, "<C-m>", function()
          local state = unpack(require("grug-far").get_instance(0):toggle_flags({ "--multiline", "--fixed-strings" }))
          vim.notify("grug-far: toggled --multiline, --fixed-strings" .. (state and "ON" or "OFF"))
        end, { buffer = true, desc = "Toggle fixed strings search" })
      end,
    })
  end,
}
