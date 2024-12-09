vim.g.mapleader = " "

-- vim.keymap.set("n", "j", "jzz")
-- vim.keymap.set("n", "k", "kzz")

vim.keymap.set("n", "<leader>j", "^viwyA `json`<Esc>i:\"<Esc>pb~$i\"<Esc>j")
vim.keymap.set("n", "<leader>y", "^viwyA `yaml`<Esc>i:\"<Esc>pb~$i\"<Esc>j")
vim.keymap.set("n", "<leader>x", "^viwyA `xml`<Esc>i:\"\"<Esc>hpj")
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn nil, err<Esc>")
vim.keymap.set("n", "<leader>er", "oif err := rows.Err(); err != nil {<CR>}<Esc>Oreturn nil, err<Esc>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("v", "<leader>bb", "<Esc>:'<,'>:!base64<CR>")
vim.keymap.set("v", "<leader>be", "y:r!echo -n \"<C-r>\"\" | base64<CR>")
vim.keymap.set("v", "<leader>bd", "y:r!echo -n \"<C-r>\"\" | base64 --decode<CR>")

vim.keymap.set("n", "<leader>bn", ":bnext<Enter>")
vim.keymap.set("n", "<leader>p", '"0p')
vim.keymap.set("v", "<leader>p", '"0p')
vim.keymap.set("n", "<leader>o", 'o<Esc>p')

vim.keymap.set("n", "gt", ':!go test ./...<Enter>')

vim.keymap.set('n', '<leader>ex', ':execute "!".getline(".")<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ec', ':execute getline(".")<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rx', ':execute "r!".getline(".")<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>nh", ":noh<Enter>")

vim.keymap.set("n", "<leader>wv", "<C-w>v")        -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s")        -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=")        -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", ":close<CR>")    -- close current split window

vim.keymap.set('n', '<Leader>u', '<cmd>:UndotreeToggle<cr>')


-- :s/\%V\(.*\)\%V/"\1"/
vim.keymap.set("v", "<leader>s\"", ':s/\\%V\\(.*\\)\\%V/"\1"/')
