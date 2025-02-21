return {
  -- Configurar el LSP de Python (pyright)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
      },
    },
  },

  -- Integrar DAP para depuración con Python
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
    },
    config = function()
      require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    end,
  },

  -- Formateo y linting con null-ls
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.ruff,
      }
    end,
  },

  -- Treesitter para mejor resaltado de sintaxis
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "python" },
    },
  },
}
