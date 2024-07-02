local setup, hurl = pcall(require, "hurl")
if not setup then
    return
end

hurl.setup({
    debug = false, -- If true, logs will be saved at ~/.local/state/nvim/hurl.nvim.log

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
    },
})

vim.keymap.set("n", "<leader>ra", ":HurlRunner<Enter>")
vim.keymap.set("n", "<leader>rr", ":HurlRunnerAt<Enter>")
vim.keymap.set("n", "<leader>re", ":HurlRunnerToEntry<Enter>")
vim.keymap.set("n", "<leader>rt", ":HurlToggleMode<Enter>")
vim.keymap.set("n", "<leader>rv", ":HurlVerbose<Enter>")

