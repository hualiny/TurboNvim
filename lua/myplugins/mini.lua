return {
  {
    "windwp/nvim-autopairs",
    enabled = true,
    event = "InsertEnter",
    opts = {
      map_cr = false,
      break_undo = false,
    }, -- this is equalent to setup({}) function
    keys = {
      {
        "<leader>up",
        function()
          vim.g.minipairs_disable = not vim.g.minipairs_disable
          local autopairs = require("nvim-autopairs")
          autopairs.state.disabled = not autopairs.state.disabled
          if autopairs.state.disabled then
            vim.notify("Disabled auto pairs", vim.log.levels.WARN, { title = "Option" })
          else
            vim.notify("Enabled auto pairs", vim.log.levels.WARN, { title = "Option" })
          end
        end,
        desc = "Toggle auto pairs",
      },
    },
  },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
  {
    "echasnovski/mini.bufremove",
    enabled = false,
  },
  {
    "echasnovski/mini.move",
    enabled = false,
  },
  {
    "echasnovski/mini.files",
    enabled = false,
  },
}
