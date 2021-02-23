local commands = {
  npm = 'npm install --silent --quiet --global %s'
}

local configs = {
  bashls = {
    command = 'npm',
    package = 'bash-language-server'
  },
  tsserver = {
    command = 'npm',
    package = 'typescript-language-server'
  },
}

return function()
  local packages = {}

  for lsp, _ in pairs(require('lspconfig/configs')) do
    local config = configs[lsp]

    if config ~= nil then
      local command = commands[config.command]
      local package = config.package
      table.insert(packages, string.format(command, package))
    end
  end

  for _, v in pairs(packages) do
    vim.fn.jobstart(v, {
      on_stdout = function(id, data, name)
        if data[1] then
          print(v, data[1])
        end
      end
    })
  end
end
