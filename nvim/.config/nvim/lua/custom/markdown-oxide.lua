local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
require('lspconfig').markdown_oxide.setup {
  capabilities = capabilities,
  -- ensure that capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true
  root_dir = lspconfig.util.root_pattern('.git', vim.fn.getcwd()),
  -- this is a temp fix for an error in the lspconfig for this LS
}
