return {
  "RRethy/vim-illuminate",
  lazy = true,
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  opts = {
    delay = 200,
    large_file_cutoff = 2000,
    large_file_overrides = {
      providers = { "lsp", "treesitter", "regex" },
    },
  },
  config = function(_, opts)
    require("illuminate").configure(opts)

    local function map(key, dir, buffer)
      vim.keymap.set("n", key, function()
        require("illuminate")["goto_" .. dir .. "_reference"](false)
      end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
    end

    map("]]", "next")
    map("[[", "prev")

    -- also set it after loading ftplugins, since a lot overwrite [[ and ]]
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        local buffer = vim.api.nvim_get_current_buf()
        map("]]", "next", buffer)
        map("[[", "prev", buffer)
      end,
    })

    -- set cursorword gui
    vim.api.nvim_create_autocmd({ "FileType" }, {
      callback = function()
        local hl_groups = { "IlluminatedWordText", "IlluminatedWordRead", "IlluminatedWordWrite" }
        for _, hl_group in pairs(hl_groups) do
          vim.api.nvim_set_hl(0, hl_group, { fg = "NONE", bg = "#504945" })
        end
      end,
    })
  end,
  keys = {
    { "]]", desc = "Next Reference" },
    { "[[", desc = "Prev Reference" },
  },
}
