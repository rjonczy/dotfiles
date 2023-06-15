local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end
mason.setup {}

local status_ok, mason_update = pcall(vim.cmd, "MasonUpdate")
if not status_ok then
  return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end
mason_lspconfig.setup {}
