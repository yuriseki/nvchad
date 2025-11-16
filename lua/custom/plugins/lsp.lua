return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tsserver",
        "tailwindcss-language-server",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "tsserver",
        "tailwindcss-language-server",
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = require("nvchad.configs.lspconfig").capabilities,
            on_attach = require("nvchad.configs.lspconfig").on_attach,
          })
        end,
      },
    },
  },
}
