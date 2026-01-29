return {
    {
        "mfussenegger/nvim-dap",
        keys = {
            { "<leader>bb", function() require("dap").toggle_breakpoint() end, desc = "DAP Toggle Breakpoint" },
            { "<leader>bc", function() require("dap").continue() end,          desc = "DAP Continue" },
        },
    },

    {
        "leoluz/nvim-dap-go",
        ft = "go",
        dependencies = { "mfussenegger/nvim-dap" },
        keys = {
            { "<leader>bt", function() require("dap-go").debug_test() end,      desc = "DAP Debug Test" },
            { "<leader>bl", function() require("dap-go").debug_last_test() end, desc = "DAP Debug Last Test" },
        },
        config = function()
            require("dap-go").setup({
                dap_configurations = {
                    {
                        type = "go",
                        name = "Debug (build flags & args)",
                        request = "launch",
                        program = "${file}",
                        args = require("dap-go").get_arguments,
                        buildflags = require("dap-go").get_build_flags,
                    },
                },
            })
        end,
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        keys = {
            { "<leader>bu", function() require("dapui").toggle() end, desc = "DAP UI Toggle" },
            { "<leader>bB", function()
                require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
            end },
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dapui.setup()

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
        end,
    },

    {
        "theHamsta/nvim-dap-virtual-text",
        dependencies = { "mfussenegger/nvim-dap" },
        opts = {}, -- default setup
    },
}
