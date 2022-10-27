local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "jdtls", "pyright" }

for _, lsp in ipairs(servers) do

  if lsp == "jdtls" then
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      -- cmd = 'jdtls -configuration /home/kevin/.cache/jdtls/config -data /home/kevin/.cache/jdtls/workspace'
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end
