return {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
        vim.o.background = "dark" -- or "light" for light mode
        vim.cmd("let g:gruvbox_material_better_performance=1")
        vim.cmd("let g:gruvbox_material_background= 'hard'")
        -- vim.cmd("let g:gruvbox_material_transparent_background=2")
        vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
        vim.cmd("let g:gruvbox_material_ui_contrast='low'")
        vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='grey'")
        vim.cmd("let g:gruvbox_material_inlay_hints_background='none'")
        --vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
        -- vim.cmd("let g:gruvbox_material_diagnostic_text_highlight = 1")
        vim.cmd("let g:gruvbox_material_cursor='auto'")
        vim.g.gruvbox_material_enable_italic = false
        vim.g.gruvbox_material_colors_override = {
            bg_dim = { "#202020", 250 },
            bg0 = { "#202020", 250 },
            yellow = { "#7CAEA3", 250 },
            red = { "#D8A656", 250 },
            green = { "#89B482", 250 },
            aqua = { "#A3C5A9", 250 },
            orange = { "#D8A656", 250 },
            purple = { "#c77776", 250 },
        }
        vim.cmd([[colorscheme gruvbox-material]]) -- Set color scheme
        vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
        vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
        vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
    end,
}
