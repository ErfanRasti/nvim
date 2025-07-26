return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  event = "VeryLazy",
  config = function()
    require("which-key").add({
      { "<leader>t", group = "test" }, -- group
      {
        "<leader>tn",
        "<cmd>TestNearest<cr>",
        mode = "n",
        desc = "Run nearest test",
      },
      {
        "<leader>tf",
        "<cmd>TestFile<cr>",
        mode = "n",
        desc = "Run file tests",
      },
      {
        "<leader>ts",
        "<cmd>TestSuite<cr>",
        mode = "n",
        desc = "Run test suite",
      },
      {
        "<leader>tl",
        "<cmd>TestLast<cr>",
        mode = "n",
        desc = "Rerun last test",
      },
      {
        "<leader>tv",
        "<cmd>TestVisit<cr>",
        mode = "n",
        desc = "Visit test file",
      },
    })
   vim.cmd("let test#strategy = 'vimux'")
  end,
}
