return {
  "akinsho/bufferline.nvim",
  event = "BufEnter",
  keys = {
    {
      "<leader>bj",
      "<cmd>BufferLinePick<cr>",
      desc = "Jump to buffer *",
    },
    {
      "<leader>bs",
      false,
    },
    {
      "<A-1>",
      "<cmd>lua require('bufferline').go_to(1, true)<cr>",
      desc = "Go to buffer 1",
    },
    {
      "<A-2>",
      "<cmd>lua require('bufferline').go_to(2, true)<cr>",
      desc = "Go to buffer 2",
    },
    {
      "<A-3>",
      "<cmd>lua require('bufferline').go_to(3, true)<cr>",
      desc = "Go to buffer 3",
    },
    {
      "<A-4>",
      "<cmd>lua require('bufferline').go_to(4, true)<cr>",
      desc = "Go to buffer 4",
    },
    {
      "<A-5>",
      "<cmd>lua require('bufferline').go_to(5, true)<cr>",
      desc = "Go to buffer 5",
    },
    {
      "<A-6>",
      "<cmd>lua require('bufferline').go_to(6, true)<cr>",
      desc = "Go to buffer 6",
    },
    {
      "<A-7>",
      "<cmd>lua require('bufferline').go_to(7, true)<cr>",
      desc = "Go to buffer 7",
    },
    {
      "<A-8>",
      "<cmd>lua require('bufferline').go_to(8, true)<cr>",
      desc = "Go to buffer 8",
    },
    {
      "<A-9>",
      "<cmd>lua require('bufferline').go_to(9, true)<cr>",
      desc = "Go to buffer 9",
    },
    {
      "<A-->",
      "<cmd>BufferLineCyclePrev<cr>",
      desc = "Prev Buffer",
    },
    { "<A-=>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<S-h>", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "<S-l>", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
}
