return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- python
      "basedpyright",
      "ruff",

      -- go
      "gopls",
      "impl",
      "gofumpt",
      "gomodifytags",
      "goimports-reviser",

      -- json
      "json-lsp",

      -- docker
      "dockerfile-language-server",
      "docker-compose-language-service",
      "hadolint",

      -- bash
      "bash-language-server",
      "shfmt",
      "shellcheck",

      -- markdown
      "marksman",
      "markdownlint",
      "markdown-toc",

      -- lua
      "lua-language-server",
      "stylua",

      -- sql
      "sql-formatter",

      -- vim
      "vim-language-server",

      -- js && html
      "html-lsp",
      "prettier",
      "prettierd",
      -- "vetur-vls", -- vue
      -- "eslint_d",

       -- css
      -- "css-lsp",
      -- "cssmodules-language-server",

      -- "emmet-ls",
      -- "typescript-language-server",
      -- "tailwindcss-language-server",

      -- dap
      -- "delve",
      -- "debugpy",

      -- diagnostic
      -- "ruff-lsp",

      -- formatter
      -- "isort",
      -- "black",
    },
  },
}
