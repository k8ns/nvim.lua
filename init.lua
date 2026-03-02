
require("core.options")
require("core.filetype")
require("core.keymaps")
require("core.api")

vim.cmd("filetype plugin indent on")

require("config.lazy")
require("config.lsp")
