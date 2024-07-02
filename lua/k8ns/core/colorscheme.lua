-- require("gruvbox").setup({
-- 	contrast = "hard",
-- 	palette_overrides = {
-- 		gray = "#992ea5", -- comments are green and by that I mean GREEN
-- 	}
--0 })
--
--
--
-- vim.opt.termguicolors = true

vim.cmd([[
  augroup transparent_signs
  autocmd!
  " autocmd ColorScheme * highlight GitSignsChange guibg=gray
  " autocmd ColorScheme * highlight GitSignsChange guibg=#193549 guifg=#3ad900
  " autocmd ColorScheme * highlight NvimTreeNormal guibg=#151515 guifg=#3ad900
  " autocmd ColorScheme * highlight FloatBorder guibg=#193549 guifg=#3ad900
  augroup end
]])


-- vim.cmd("colorscheme darkula")
vim.cmd("colorscheme habamax")

-- vim.cmd("colorscheme blue")
--
