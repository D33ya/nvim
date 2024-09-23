local M = {}

M.dotfiles = function()
  local picker = require 'telescope._extensions.file_browser.picker'
  opts = {
    cwd = '~/.config/',
    promt_title = 'Dotfiles',
  }
  picker(opts)
end

return M
