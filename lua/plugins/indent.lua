return {
  "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  config = function()
    vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { pattern = "*", command = "EnableHL" })
    require("hlchunk").setup({
      chunk = {
        enable = true,
        use_treesitter = true,
        notify = false, -- notify if some situation(like disable chunk mod double time)
        exclude_filetypes = {
          aerial = true,
          dashboard = true,
        },
        style = {
          { fg = "#806d9c" },
        },
      },
      indent = {
        enable = true,
        notify = false,
        -- chars = { "│" },
        chars = { "│", "¦", "┆", "┊" },
        use_treesitter = false,
      },
      blank = {
        enable = false,
        notify = false,
        chars = {
          "․",
        },
        style = {
          vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
        },
      },
      line_num = {
        enable = true,
        notify = false,
        use_treesitter = true,
        style = { fg = "#806d9c" },
      },
    })
  end,
}