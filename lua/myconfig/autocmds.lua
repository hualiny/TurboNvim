-- autocmd TermOpen * setlocal foldmethod=manual
vim.api.nvim_create_autocmd({ "TermOpen" }, {
  pattern = { "*" },
  callback = function()
    vim.o.foldmethod="manual"
  end,
})
