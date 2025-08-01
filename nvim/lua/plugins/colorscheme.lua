return {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
        vim.o.background = "dark" -- or "light" for light mode
        vim.cmd("let g:gruvbox_material_better_performance=1")
        vim.cmd("let g:gruvbox_material_background= 'hard'")
        vim.cmd("let g:gruvbox_material_transparent_background=2")
        vim.cmd("let g:gruvbox_material_cursor='auto'")
        vim.cmd("let g:gruvbox_material_ui_contrast='low'")
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_colors_override = {
            bg_dim = { "#202020", 250 },
            bg0 = { "#202020", 250 },
            yellow = { "#e78a4e", 250 },
            orange = { "#d4be98", 250 },
        }
        vim.cmd([[colorscheme gruvbox-material]]) -- Set color scheme
        vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
        vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
        vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
    end,
}
