local highlight_groups = {
    "Normal",
    "NonText",
    "LineNr",
    "EndOfBuffer",
    "SignColumn",
}
vim.keymap.set("n", "g.", function()
    vim.lsp.buf.code_action()
end, { desc = "Code Action (like auto-import)" })
for _, group in ipairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
require("config.lazy")
vim.g.terminal_emulator = "xterm-ghostty"
vim.opt.termguicolors = true
vim.cmd("highlight NoiceCmdlinePopupBorder guifg=#ddc7a1")
vim.cmd("highlight NoiceCmdlineIcon guifg=#ddc7a1")
vim.cmd("highlight Title guifg=#7CAEA3")
vim.cmd("highlight WinSeparator guifg=#ddc7a1")
vim.opt.termguicolors = true
vim.cmd([[
  highlight NormalFloat guibg=none
  highlight LspFloatWinNormal guibg=none
  highlight LspFloatWinBorder guibg=none
  highlight LspInfoBorder guibg=none
]])

vim.cmd([[
  highlight MatchParen ctermfg=green ctermbg=none gui=bold guifg=#BECC70 guibg=none
]])
