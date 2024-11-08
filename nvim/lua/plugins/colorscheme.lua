return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("catppuccin").load()
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      no_italic = true,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
          surface0 = "#000000",
          lavender = "#f9e2af", -- yellow
          mauve = "#74c7ec", -- saffire
          blue = "#ff9ab6", -- pinkish red
          peach = "#94e2d5", -- green
          green = "#c0c0c0", -- silver
          red = "#ff7bb4", -- dark pink
          maroon = "#eac2e2", -- light pink
          text = "#ffffff",
        },
      },
    },
  },
}
