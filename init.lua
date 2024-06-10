vim.env.LUA_PATH = "/Users/k8nsn/.rocksenv/share/lua/5.4/?.lua;/Users/k8nsn/.rocksenv/share/lua/5.4/?/init.lua;;"
vim.env.LUA_CPATH = "/Users/k8nsn/.rocksenv/lib/lua/5.4/?.so;;"

vim.g.lua_host_prog = '/opt/homebrew/bin/luajit'
require("k8ns.core.keymaps")
require("k8ns.lazy")
require("k8ns.core.options")
require("k8ns.core.colorscheme")

require("k8ns.plugins.cmp")
require("k8ns.plugins.comment")
require("k8ns.plugins.nvim-tree")
require("k8ns.plugins.telescope")
require("k8ns.plugins.treesitter")
require("k8ns.plugins.lsp")
require("k8ns.plugins.lualine")
require("k8ns.plugins.gitsigns")
require("k8ns.plugins.rest")
require("k8ns.plugins.gpt")
require("k8ns.plugins.filetype")
require("k8ns.plugins.dadbod")
require("k8ns.plugins.harpoon")
require("k8ns.plugins.hurl")

