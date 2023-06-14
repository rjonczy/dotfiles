require("mason").setup()
require("mason-lspconfig").setup()

local mason_ok, mason = pcall(vim.cmd, "MasonUpdate")
if not mason_ok then
  return
end


