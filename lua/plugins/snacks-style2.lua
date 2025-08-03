if true then
  return {}
end

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

    -- show hidden files and ignored files on explorer
    picker = { hidden = true, ignored = true },

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
        { section = "header", pane = 1 },
        { section = "keys", gap = 1, padding = 1, pane = 1 },
        { section = "startup", pane = 1 },
        {
          pane = 2,
          section = "terminal",
          cmd = "ascii-image-converter ~/Pictures/MyImages/Me_AtTheDSPClass.png -C -c",
          indent = 2,
          height = 50,
        },
      },
    },
  },
}
