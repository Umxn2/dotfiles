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
          base = "#191919",
          mantle = "#191919",
          crust = "#191919",
          lavender = "#cdeaf7", -- cloudy blue
          mauve = "#6fc9e7", -- saffire
          blue = "#fba4d2", -- pink
          peach = "#b3deef", -- light blue
          green = "#c0c0c0", -- silver
          red = "#ff7bb4", -- dark pink
          maroon = "#fecca8", -- peach
          yellow = "#fde5b4",
          text = "#eeeeee",
          surface0 = "#202020",
        },
      },
    },
  },
}
