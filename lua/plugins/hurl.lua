return {
    "jellydn/hurl.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
    ft = "http",
    opts = {
        debug = true, -- If true, logs will be saved at ~/.local/state/nvim/hurl.nvim.log

        -- Set the display mode for the response: 'split' or 'popup'
        mode = 'split',

        show_notification = true,

        -- Split settings
        split_position = "right",
        split_size = "40%",

        env_file = {
            'vars.env',
        },

        -- Specify formatters for different response types
        formatters = {
            json = { 'jq' }, -- Uses jq to format JSON responses
            html = {
                'prettier', -- Uses prettier to format HTML responses
                '--parser',
                'html',
            },
            yaml = {},
        },
    },
    keys = {
        { "<leader>ra", "<cmd>HurlRunner<CR>",           desc = "Hurl: Run all" },
        { "<leader>rr", "<cmd>HurlRunnerAt<CR>",         desc = "Hurl: Run at cursor" },
        { "<leader>re", "<cmd>HurlRunnerToEntry<CR>",    desc = "Hurl: Run to entry" },
        { "<leader>rt", "<cmd>HurlToggleMode<CR>",       desc = "Hurl: Toggle mode" },
        { "<leader>rv", "<cmd>HurlVerbose<CR>",          desc = "Hurl: Toggle verbose" },
        { "<leader>rl", "<cmd>HurlShowLastResponse<CR>", desc = "Hurl: Show last response" },
    },
}
