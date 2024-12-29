return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    dashboard.section.header.val = {
      [[                                                   ]],
      [[ ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓]],
      [[ ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒]],
      [[▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░]],
      [[▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ]],
      [[▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒]],
      [[░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░]],
      [[░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░]],
      [[   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ]],
      [[         ░    ░  ░    ░ ░        ░   ░         ░   ]],
      [[                                ░                  ]],
      [[                                                   ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button('e', '󰈔 > New File', ':ene<cr>'),
      dashboard.button('SPC ee', '󰝰 > Toggle Neotree', ':Neotree toggle<cr>'),
      dashboard.button('SPC ff', '󰱼 > Find File', ':Telescope find_files<cr>'),
      dashboard.button('SPC fs', '󰍉 > Find Word', ':Telescope live_grep<cr>'),
      dashboard.button('SPC ar', '󰦛 > Restore Session', ':SessionRestore<cr>'),
      dashboard.button('q', '󰅙 > Quit NVIM', ':qa<cr>'),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
