-- bootstrap lazy.nvim, LazyVim and your plugins
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#f9e5b1", bg = "NONE" })
  end,
})
local highlight_groups = { "Normal", "NonText", "LineNr", "EndOfBuffer", "SignColumn" }
for _, group in ipairs(highlight_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
require("config.lazy")
