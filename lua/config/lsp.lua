local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Example: setup for C language
lspconfig.clangd.setup {
  capabilities = capabilities,
}

-- Example: setup for Lua (Neovim config)
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    }
  },
  capabilities = capabilities,
}

