-- import comment plugin safely
local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
  return
end

toggleterm.setup({
 shell = '/bin/bash',
 size = 30,
})
