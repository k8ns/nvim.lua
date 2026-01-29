vim.env.LUA_PATH = "/Users/k8nsn/.rocksenv/share/lua/5.4/?.lua;/Users/k8nsn/.rocksenv/share/lua/5.4/?/init.lua;;"
vim.env.LUA_CPATH = "/Users/k8nsn/.rocksenv/lib/lua/5.4/?.so;;"

vim.g.lua_host_prog = '/opt/homebrew/bin/luajit'


require("core.options")
require("core.filetype")
require("core.keymaps")

vim.cmd("filetype plugin indent on")

require("config.lazy")
require("config.lsp")
