return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "ts_ls",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
      vim.lsp.config("pyright", {})
      vim.lsp.config("ts_ls", {})

      vim.lsp.enable({ "lua_ls", "pyright", "ts_ls" })
    end,
  },
}
