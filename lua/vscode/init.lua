local M = {}
local theme = require('vscode.theme')

M.setup = function()
  vim.cmd('hi clear')

  vim.o.background = 'dark'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'vscode'

  if vim.fn.has('nvim-0.9') then
    for _, group in ipairs(vim.fn.getcompletion('@lsp', 'highlight')) do
      vim.api.nvim_set_hl(0, group, {})
    end
  end

  theme.set_highlights()
end

return M
