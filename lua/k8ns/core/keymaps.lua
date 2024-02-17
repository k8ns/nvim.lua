vim.g.mapleader = " "

-- vim.keymap.set("n", "j", "jzz")
-- vim.keymap.set("n", "k", "kzz")

-- golang
vim.keymap.set("n", "<leader>j", "^viwyA `json`<Esc>i:\"<Esc>pb~$i\"<Esc>j")
vim.keymap.set("n", "<leader>y", "^viwyA `yaml`<Esc>i:\"<Esc>pb~$i\"<Esc>j")
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")
vim.keymap.set("n", "<leader>er", "oif err := rows.Err(); err != nil {<CR>}<Esc>Oreturn nil, err<Esc>")


vim.keymap.set("v", "<leader>bb", "<Esc>:'<,'>:!base64<CR>")
vim.keymap.set("v", "<leader>be", "y:r!echo -n \"<C-r>\"\" | base64<CR>")
vim.keymap.set("v", "<leader>bd", "y:r!echo -n \"<C-r>\"\" | base64 --decode<CR>")

vim.keymap.set("n", "<leader>bn", ":bnext<Enter>")
vim.keymap.set("n", "<leader>p", '"0p')
vim.keymap.set("v", "<leader>p", '"0p')



vim.keymap.set("n", "<leader>nh", ":noh<Enter>")

vim.keymap.set("n", "<leader>wv", "<C-w>v")        -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s")        -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=")        -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", ":close<CR>")    -- close current split window


vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<Enter>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFindFile<Enter>")
-- vim.keymap.set("n", "<leader>t", ":ToggleTerm<Enter>")

-- vim.keymap.set("n", "<leader>g", ":GitBlameToggle<Enter>")

vim.keymap.set("n", "<leader>rr", ":lua require('rest-nvim').run()<CR>")
vim.keymap.set("n", "<leader>rp", ":lua require('rest-nvim').run(true)<CR>")

-- telescope
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>fs', function()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>fa', function() require('telescope.builtin').find_files({ hidden = true, no_ignore = true }) end, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep({ hidden = true, no_ignore = true }) end, { desc = '[S]earch [G]rep' })
-- vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })


vim.keymap.set('n', '<Leader>tk', '<cmd>:ChatGPT<cr>')
vim.keymap.set('n', '<Leader>tj', '<cmd>:ChatGPTActAs<cr>')
vim.keymap.set('n', '<Leader>tl', '<cmd>:ChatGPTEditWithInstructions<cr>')


vim.keymap.set('n', '<leader>d[', ':lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>d]', ':lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
