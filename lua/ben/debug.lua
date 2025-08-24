local dap = require('dap')

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode-14', -- part of lldb package
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "lldb", -- matches adapter
    request = "launch",
    program = function()
      -- prompt user for path to binary
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {}, -- you can put runtime args here
  },
}

-- Reuse same config for C
dap.configurations.c = dap.configurations.cpp

