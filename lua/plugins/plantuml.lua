local plantuml = {
  -- {
  --   "javiorfo/nvim-soil",
  --
  --   -- Optional for puml syntax highlighting:
  --   -- dependencies = { "javiorfo/nvim-nyctophilia" },
  --
  --   lazy = true,
  --   ft = "plantuml",
  --   opts = {
  --     -- If you want to change default configurations
  --
  --     -- If you want to use Plant UML jar version instead of the install version
  --     puml_jar = "/home/yhualin/Documents/practice/plantuml/plantuml.jar",
  --
  --     -- If you want to customize the image showed when running this plugin
  --     image = {
  --       darkmode = false, -- Enable or disable darkmode
  --       format = "png", -- Choose between png or svg
  --
  --       -- This is a default implementation of using nsxiv to open the resultant image
  --       -- Edit the string to use your preferred app to open the image (as if it were a command line)
  --       -- Some examples:
  --       -- return "feh " .. img
  --       -- return "xdg-open " .. img
  --       execute_to_open = function(img)
  --         return "nsxiv -b " .. img
  --       end,
  --     },
  --   },
  -- },
  {
    "https://github.com/aklt/plantuml-syntax",
    lazy = true,
    ft = "plantuml",
  },
  {
    "https://gitlab.com/itaranto/plantuml.nvim",
    version = "*",
    lazy = true,
    ft = "plantuml",
    config = function()
      local opts = {
        renderer = {
          type = "image",
          options = {
            prog = "feh",
            dark_mode = true,
            format = nil, -- Allowed values: nil, 'png', 'svg'.
          },
        },
        render_on_write = true,
      }

      require("plantuml").setup(opts)
    end,
    opts = {
      {
        renderer = {
          type = "image",
          options = {
            prog = "feh",
            dark_mode = true,
            format = nil, -- Allowed values: nil, 'png', 'svg'.
          },
        },
        render_on_write = true,
      },
    },
  },
}

return plantuml
