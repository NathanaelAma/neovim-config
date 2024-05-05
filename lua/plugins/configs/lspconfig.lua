local on_attach = require("configs.lspconfig").on_attach
local on_init = require("configs.lspconfig").on_init
local capabilities = require("configs.lspconfig").capabilities

local schemastore = require "schemastore"

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "jsonls", "yamlls", "solargraph", "taplo"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.yamlls.setup {
  settings = {
    yaml = {
      format = {
        enable = true,
      },
      schemas = {
        schemastore.yaml.schemas(),
      },
    },
  },
}

lspconfig.jsonls.setup {
  settings = {
    json = {
      schemas = schemastore.json.schemas(),
      validate = { enable = true },
    },
  },
}

-- ruby 
lspconfig.solargraph.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
}
