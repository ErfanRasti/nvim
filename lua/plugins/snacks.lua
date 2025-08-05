return {
  "folke/snacks.nvim",
  ---@type table

  opts = {
    -- explorer = { enabled = false },
    -- image on file preview
    image = {
      -- your image configuration comes here
      -- or leave it empty to use the default settings
    },

    -- show hidden files and ignored files on explorer and picker
    picker = {

     -- Activates configurations for snacks explorer
      hidden = true,
      ignored = true,
      --
      sources = {
        -- Activates configurations for picker
        files = {
          -- Set 'hidden' to true to show hidden files by default
          hidden = true,
          -- Set 'ignored' to true to show gitignore files
          ignored = true,
        },
      },
    },
    explorer = { hidden = true, ignored = true },

    -- setup dashboard
    dashboard = {
      width = 65,
      preset = {
        header = [[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
        ]],
      },
      -- example = "advanced",
      sections = {
        { section = "header" },
        {
          pane = 2,
          section = "terminal",
          -- cmd = "colorscript -e square",
          cmd = "colorscript -r",
          -- cmd = "ascii-image-converter ~/Pictures/MyImages/ERS.jpg -C -c -d 100,100",
          height = 5,
          padding = 6,
        },
        { section = "keys", gap = 1, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 1,
        },
        {
          pane = 2,
          icon = " ",
          title = "Projects",
          section = "projects",
          indent = 2,
          padding = 1,
        },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { section = "startup" },
      },
    },
  },
}
