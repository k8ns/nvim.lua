return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- darkest variant

      color_overrides = {
        mocha = {
          base = "#1e1e1e",   -- main background
          mantle = "#181818", -- slightly darker
          crust = "#111111",  -- darkest layer
        },
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
