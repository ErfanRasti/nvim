return {
  "olimorris/codecompanion.nvim",
  lazy = false,
  opts = {
    -- https://codecompanion.olimorris.dev/getting-started
    interactions = {
      -- Full chat conversation buffer - use the larger model
      chat = {
        adapter = {
          -- name = "ollama",
          -- model = "gemma3:1b",
          name = "opencode",
          model = "OpenCode Zen/Nemotron 3 Super Free",
        },
      },
      -- Live coding inline assistance
      inline = {
        adapter = {
          name = "copilot",
          model = "gpt-4.1",
        },
      },
      -- Command-line queries - use smaller model
      cmd = {
        adapter = {
          name = "ollama",
          model = "gemma3:270m",
        },
      },
      -- Terminal CLI agent wrapper - use smaller model
      cli = {
        adapter = {
          name = "ollama",
          model = "gemma3:270m",
        },
      },
      -- Background tasks (auto-generated titles, message compaction)
      background = {
        adapter = {
          name = "ollama",
          model = "gemma3:1b", -- Can use larger model since it runs async
        },
      },
    },
    -- adapters = {
    --   ollama = function()
    --     return require("codecompanion.adapters.ollama").setup({
    --       host = "localhost", -- Adjust if Ollama is remote
    --       port = 11434,
    --       parameters = {
    --         temperature = 0.7,
    --         num_ctx = 4096,
    --       },
    --     })
    --   end,
    -- },
    opts = {
      log_level = "DEBUG",
    },
  },

  -- Configure which-key mappings for CodeCompanion
  keys = function()
    local wk = require("which-key")

    -- Register the CodeCompanion keymaps
    wk.add({
      -- Group for CodeCompanion
      {
        "<leader>a",
        group = "AI CodeCompanion",
        desc = "CodeCompanion Commands",
      },

      -- Ctrl+A for actions menu
      {
        "<leader>aa",
        "<cmd>CodeCompanionActions<cr>",
        desc = "CodeCompanion Actions",
      },

      -- Toggle chat
      {
        "<leader>ac",
        "<cmd>CodeCompanionChat Toggle<cr>",
        desc = "Toggle CodeCompanion Chat",
      },

      -- Visual mode only: 'ga' to add selection to chat
      {
        "ga",
        "<cmd>CodeCompanionChat Add<cr>",
        desc = "Add selection to CC chat",
        mode = "v",
      },

      -- Open the inline interaction
      {
        "<leader>ai",
        "<cmd>CodeCompanion<cr>",
        desc = "Open CodeCompanion (inline)",
      },

      -- Run a CLI command through CodeCompanion
      {
        "<leader>ar",
        "<cmd>CodeCompanionCmd<cr>",
        desc = "Run CLI Command",
      },

      -- Slash Command Shortcuts (Visual & Normal)
      {
        "<leader>ae",
        "<cmd>CodeCompanion /explain<cr>",
        desc = "Explain Code",
        mode = { "n", "v" },
      },
      {
        "<leader>af",
        "<cmd>CodeCompanion /fix<cr>",
        desc = "Fix Code",
        mode = { "n", "v" },
      },
      {
        "<leader>at",
        "<cmd>CodeCompanion /tests<cr>",
        desc = "Generate Tests",
        mode = { "n", "v" },
      },
      {
        "<leader>al",
        "<cmd>CodeCompanion /lsp<cr>",
        desc = "Explain LSP Diagnostics",
        mode = { "n", "v" },
      },
      {
        "<leader>am",
        "<cmd>CodeCompanion /commit<cr>",
        desc = "Generate Commit Msg",
        mode = { "n" },
      },
    })

    -- Keep your command abbreviation (When you type `:cc` it became CodeCompanion)
    vim.cmd([[cab cc CodeCompanion]])
  end,
}
