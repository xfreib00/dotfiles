local status_ok, packer = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("Fry.lsp.configs")
require("Fry.lsp.handlers").setup()
