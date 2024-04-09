local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local schemastore = require "schemastore"

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "jsonls", "yamlls", "solargraph"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

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
