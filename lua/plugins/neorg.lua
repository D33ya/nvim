return {
  {
    'nvim-neorg/neorg',
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = '*', -- Pin Neorg to the latest stable release
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.esupports.metagen'] = {
            config = {
              author = 'Danny',
              type = 'auto',
              timezone = 'implicit-local',
            },
          },
          ['core.concealer'] = {
            config = {
              icon_preset = 'diamond',
            },
          },
          ['core.dirman'] = {
            config = {
              workspaces = {
                work_notes = '~/Documents/notes',
                library_of_norgxandria = 'Documents/library-of-norgxandria',
              },
              default_workspace = 'work_notes',
            },
          },
          ['core.summary'] = {},
          ['core.completion'] = {
            config = {
              engine = 'nvim-cmp',
              name = '[Neorg]',
            },
          },
          ['core.integrations.nvim-cmp'] = {},
          ['core.integrations.telescope'] = {},
        },
        dependencies = { { 'nvim-lua/plenary.nvim' }, { 'nvim-neorg/neorg-telescope' } },
      }
    end,
  },
  {
    'nvim-neorg/neorg-telescope',
    lazy = false,
  },
}
