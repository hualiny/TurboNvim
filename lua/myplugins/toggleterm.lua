return {
  {
    "akinsho/toggleterm.nvim",
    enabled = false,
  },
  {
    "voldikss/vim-floaterm",
    keys = {
      { "<A-k>", "<Cmd>FloatermNew<CR>", desc = "NeoTree", mode = "n" },
      { "<A-k>", "<C-\\><C-n><Cmd>FloatermNew<CR>", desc = "NeoTree", mode = "t" },
      { "<A-h>", "<Cmd>FloatermPrev<CR>", desc = "NeoTree", mode = "n" },
      { "<A-h>", "<C-\\><C-n><Cmd>FloatermPrev<CR>", desc = "NeoTree", mode = "t" },
      { "<A-l>", "<Cmd>FloatermNext<CR>", desc = "NeoTree", mode = "n" },
      { "<A-l>", "<C-\\><C-n><Cmd>FloatermNext<CR>", desc = "NeoTree", mode = "t" },
      { "<A-j>", "<Cmd>FloatermToggle<CR>", desc = "NeoTree", mode = "n" },
      { "<A-j>", "<C-\\><C-n><Cmd>FloatermToggle<CR>", desc = "NeoTree", mode = "t" },
      { "<A-m>", "<Cmd>FloatermNew lazygit<CR>", desc = "NeoTree", mode = "n" },
      { "<A-m>", "<C-\\><C-n><Cmd>FloatermToggle<CR>", desc = "NeoTree", mode = "t" },
      { "<esc>", "<C-\\><C-n>", desc = "NeoTree", mode = "t" },
    },
    init = function()
      vim.g.floaterm_height = 0.9
      vim.g.floaterm_width = 0.9
      vim.g.floaterm_position = "center"
      vim.g.floaterm_opener = "edit"
    end,
  },
}
