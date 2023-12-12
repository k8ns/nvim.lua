local setup, gpt = pcall(require, "chatgpt")
if not setup then
    return
end

gpt.setup({
    api_key_cmd = "cat ~/.chatgpt/api_key"
})
