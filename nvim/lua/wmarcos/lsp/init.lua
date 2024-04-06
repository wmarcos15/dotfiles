local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "wmarcos.lsp.mason"
require("wmarcos.lsp.handlers").setup()
require "wmarcos.lsp.null-ls"

vim.diagnostic.config({
    virtual_text = true
})

