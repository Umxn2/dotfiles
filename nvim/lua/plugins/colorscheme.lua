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
          lavender = "#cdeaf7", -- cloudy blue
          mauve = "#6fc9e7", -- saffire
          blue = "#fba4d2", -- pink
          peach = "#b3deef", -- light blue
          green = "#c0c0c0", -- silver
          red = "#ff7bb4", -- dark pink
          maroon = "#fecca8", -- peach
          yellow = "#fde5b4", -- light yellow
          text = "#eeeeee",
          surface0 = "#202020",
        },
      },
    },
  },
}
