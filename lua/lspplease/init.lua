local M = {}

-- string: String or Table
local build_command_string = function(command, packages)
  return string.format(command, packages)
end

local concat_packages_string = function(packages)
  if type(packages) == 'table' then
    return table.concat(packages, ' ')
  end

  return packages
end

local get_packages = function()
  local packages = {}

  for lsp, _ in pairs(require('lspconfig/configs')) do
    local config = require('lspplease/servers')[lsp]

    if config ~= nil then
      local command = require('lspplease/commands')[config.command]
      local package = concat_packages_string(config.package)

      table.insert(packages, {
        packages = package,
        command = build_command_string(command, package)
      })
    end
  end

  return packages
end

local start_jobs = function(packages)
  for _, v in pairs(packages) do
    local command = v.command
    local packages = v.packages
    local job_id = vim.fn.jobstart(command, {
      on_exit = function(_, code)
        if code == 0 then
          print('✅ DONE: ' .. packages)
        else
          print('❌ ERROR: An error occured installing ' .. packages .. ' with command: ' .. command)
        end
      end
    })
  end
end

M.install = function()
  start_jobs(get_packages())
end

M.update = function()
  -- TODO
end

return M
