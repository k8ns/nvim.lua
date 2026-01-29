return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before everything else
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
