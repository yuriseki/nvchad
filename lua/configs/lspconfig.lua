require("nvchad.configs.lspconfig").defaults()

    

local servers = {
  "html",
  "cssls",
  "lua",
  -- "drupal_ls",
  "ts_ls",
  "tailwindcss",
  "jsonls",
  "pyright",
  -- "ast_grep",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
