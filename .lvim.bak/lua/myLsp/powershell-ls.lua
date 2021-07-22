local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
  configs.powershell_es = {
    default_config = {
      cmd = {'/home/jonflatt/.config/lvim/scripts/startPosh.sh'},
      filetypes = { "ps1"},
      root_dir = function(fname)
      return lspconfig.util.find_git_ancestor(fname) or vim.fn.getcwd()
    end,
      settings = {},
    },
  }
lspconfig.powershell_es.setup{
    on_attach = require'lsp'.common_on_attach
}

