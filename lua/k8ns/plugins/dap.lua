local setup, dapgo = pcall(require, "dap-go")
if not setup then
    return
end

local set, dapui = pcall(require, "dapui")
if not set then
    return
end

dapgo.setup({
    dap_configurations = {
        {
            type = "go",
            name = "Debug (Build Flags & Arguments)",
            request = "launch",
            program = "${file}",
            args = require("dap-go").get_arguments,
            buildFlags = require("dap-go").get_build_flags,
        },
    }
})

dapui.setup()

vim.keymap.set('n', '<Leader>bb', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>bc', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>bt', function() require('dap-go').debug_test() end)
vim.keymap.set('n', '<Leader>bl', function() require('dap-go').debug_last_test() end)


local dap = require("dap")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
