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
          base = "#1a1a1a",
          mantle = "#1a1a1a",
          crust = "#1a1a1a",
          lavender = "#cdeaf7", -- yellow
          mauve = "#6fc9e7", -- saffire
          blue = "#fba4d2", -- pinkish red
          peach = "#b3deef", -- greenish teal
          green = "#c0c0c0", -- silver
          red = "#ff7bb4", -- dark pink
          maroon = "#fecca8", -- light pink
          yellow = "#fde5b4",
          text = "#eeeeee",
          surface0 = "#202020",
        },
      },
    },
  },
}
