return {
  "vernette/ai-commit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "ellisonleao/dotenv.nvim", -- make sure dotenv is loaded
  },
  event = "VeryLazy",
  config = function()
    require("dotenv").setup()
    vim.cmd("Dotenv ~/.config/nvim/.env") -- put your API key here as OPENROUTER_API_KEY="YOUR_KEY"
    require("ai-commit").setup({
      openrouter_api_key = vim.fn.getenv("OPENROUTER_API_KEY"),
    })
    require("which-key").add({
      {
        "<leader>gC",
        "<cmd>AICommit<cr>",
        mode = "n",
        desc = "Commit using AI",
        remap = true,
      },
    })
  end,
}
