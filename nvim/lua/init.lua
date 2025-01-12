--require'py_lsp'.setup {
  -- This is optional, but allows to create virtual envs from nvim
--  host_python = "/usr/bin/python3.11",
--  default_venv_name = "venv" -- For local venv
--
--
--}
local lspconfig = require('lspconfig')
lspconfig.gdscript.setup {}

local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
if not vim.loop.fs_stat(pipepath) then
  vim.fn.serverstart(pipepath)
end
