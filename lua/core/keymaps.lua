vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>tj", "^viwyA `json`<Esc>i:\"<Esc>pb~$i\"<Esc>j", {desc = "golang: add json tag"})
vim.keymap.set("n", "<leader>ty", "^viwyA `yaml`<Esc>i:\"<Esc>pb~$i\"<Esc>j", {desc = "golang: add yaml tag"})
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn nil, err<Esc>", {desc = "golang: print return row.Err() err"})
vim.keymap.set("n", "<leader>er", "oif err := rows.Err(); err != nil {<CR>}<Esc>Oreturn nil, err<Esc>", {desc = "golang: print return err"})

vim.keymap.set("n", "<leader>bn", ":bnext<Enter>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "move selected line down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "move selected line up"})

-- :let @+ = expand('%:p')

vim.keymap.set("n", "<leader>s2", ":%!sort -n -d -k2,2<CR>", { desc = "Sort by column 2 numeric" })
vim.keymap.set("n", "<leader>s3", ":%!sort -n -d -k3,3<CR>", { desc = "Sort by column 3 numeric" })

vim.keymap.set("v", "<leader>bb", "<Esc>:'<,'>:!base64<CR>")
vim.keymap.set("v", "<leader>be", "y:r!echo -n \"<C-r>\"\" | base64<CR>")
vim.keymap.set("v", "<leader>bd", "y:r!echo -n \"<C-r>\"\" | base64 --decode<CR>")
vim.keymap.set("v", "<leader>c", [[:s/\%V\([a-z]\)\([A-Z]\)/\1-\L\2/g<CR>]])


vim.keymap.set("n", "<leader>bn", ":bnext<Enter>")
vim.keymap.set("n", "<leader>p", '"0p')
vim.keymap.set("v", "<leader>p", '"0p')
vim.keymap.set("n", "<leader>o", 'o<Esc>p')

vim.keymap.set("n", "gt", ':!go test ./...<Enter>')

vim.keymap.set('n', '<leader>ex', ':execute "!".getline(".")<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ec', ':execute getline(".")<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rx', ':execute "r!".getline(".")<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>sr', ':source ~/.config/nvim/init.lua<cr>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>nh", ":noh<Enter>")

vim.keymap.set("n", "<leader>wv", "<C-w>v")     -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s")     -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=")     -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window

vim.keymap.set('n', '<Leader>u', '<cmd>:UndotreeToggle<cr>')

vim.keymap.set('n', '<leader>j', '<cmd>cnext<cr>zz')
vim.keymap.set('n', '<leader>k', '<cmd>cprev<cr>zz')

-- :s/\%V\(.*\)\%V/"\1"/
vim.keymap.set("v", "<leader>s\"", ':s/\\%V\\(.*\\)\\%V/"\1"/')


vim.keymap.set('n', 'gf', function()
  local file = vim.fn.expand('<cfile>')
  if vim.fn.filereadable(file) == 0 and vim.fn.stridx(file, '/') == 0 then
    -- If file is not found and starts with "/", try relative to cwd
    file = '.' .. file
  end
  vim.cmd('edit ' .. file)
end)


