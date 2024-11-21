-- bootstrap lazy.nvim, LazyVim and your plugins
--vim.api.nvim_create_autocmd("ColorScheme", {
--  pattern = "*",
--  callback = function()
--    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = "#b4dced", bg = "none" })
--  end,
--})
local highlight_groups = { "Normal", "NonText", "LineNr", "EndOfBuffer", "SignColumn" }
for _, group in ipairs(highlight_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
require("config.lazy")
vim.g.terminal_emulator = "wezterm"
vim.opt.termguicolors = true
vim.cmd("highlight NoiceCmdlinePopupBorder guifg=#b4dced")
vim.cmd("highlight WinSeparator guifg=#b4dced")
vim.cmd([[
  highlight TermNormal guibg=NONE ctermbg=NONE
  highlight TermFloat guibg=NONE ctermbg=NONE
]])
