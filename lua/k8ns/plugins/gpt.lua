local setup, gpt = pcall(require, "chatgpt")
if not setup then
    return
end

gpt.setup({
    api_key_cmd = "cat /Users/k8nsn/.chatgpt/api_key"
})

-- chatGPT
vim.keymap.set('n', '<Leader>tk', '<cmd>:ChatGPT<cr>')
vim.keymap.set('n', '<Leader>cc', '<cmd>:ChatGPTCompleteCode<cr>')
vim.keymap.set('n', '<Leader>tj', '<cmd>:ChatGPTActAs<cr>')
vim.keymap.set('n', '<Leader>tl', '<cmd>:ChatGPTEditWithInstructions<cr>')
