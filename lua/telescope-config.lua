local M = {}

M.dotfiles = function()
  local picker = require 'telescope._extensions.file_browser.picker'
  Opts = {
    cwd = '~/.config/',
    promt_title = 'Dotfiles',
  }
  picker(Opts)
end

return M
