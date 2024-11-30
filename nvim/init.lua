local highlight_groups = { "Normal", "NonText", "LineNr", "EndOfBuffer", "SignColumn" }
for _, group in ipairs(highlight_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
require("config.lazy")
vim.g.terminal_emulator = "wezterm"
vim.opt.termguicolors = true
vim.cmd("highlight NoiceCmdlinePopupBorder guifg=#ddc7a1")
vim.cmd("highlight NoiceCmdlineIcon guifg=#ddc7a1")
vim.cmd("highlight Title guifg=#d0375e")
vim.cmd("highlight WinSeparator guifg=#ddc7a1")
vim.cmd([[
  highlight MatchParen ctermfg=green ctermbg=none gui=bold guifg=#BECC70 guibg=none
]])
vim.cmd([[
  highlight TermNormal guibg=NONE ctermbg=NONE
  highlight TermFloat guibg=NONE ctermbg=NONE
]])
