local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
if not lspconfig.apexls then

  configs.apexls = {
    default_config = {
      cmd = { 'java', '-cp', '/home/jonflatt/source/salesforcedx-vscode/packages/salesforcedx-vscode-apex/out/apex-jorje-lsp.jar', '-Ddebug.internal.errors=true', '-Ddebug.semantic.errors=true', '-Ddebug.completion.statistics=true', '-Dlwc.typegeneration.disabled=true', 'apex.jorje.lsp.ApexLanguageServerLauncher' },
      filetypes = { 'cls', 'trigger', 'apex' },
      root_dir = lspconfig.util.root_pattern('sfdx-project.json'),
      settings = {},
    },
  }
end
lspconfig.apexls.setup{
    on_attach = require'lsp'.common_on_attach
}

