---@diagnostic disable: missing-fields
return {
  'mfussenegger/nvim-dap',
  dependencies = {
    { 'rcarriga/nvim-dap-ui', dependencies = { 'nvim-neotest/nvim-nio' } },
    'williamboman/mason.nvim',
    { 'jay-babu/mason-nvim-dap.nvim', opts = { automatic_setup = true } },
  },
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    dap.adapters.godot = {
      type = 'server',
      host = '127.0.0.1',
      port = 6006,
    }

    dap.configurations.gdscript = {
      {
        type = 'godot',
        request = 'launch',
        name = 'Launch Scene',
        project = '${workspaceFolder}',
        launch_scene = true,
      },
    }

    -- keymaps
    local keymap = vim.keymap

    keymap.set('n', '<f5>', dap.continue, { desc = 'Debug: Start/Continue' })
    keymap.set('n', '<f6>', function()
      dap.terminate()
      dapui.close()
    end, { desc = 'Debug: Close' })
    keymap.set('n', '<f8>', dap.step_into, { desc = 'Debug: Step Into' })
    keymap.set('n', '<f7>', dap.step_over, { desc = 'Debug: Step Over' })
    keymap.set('n', '<f9>', dap.step_out, { desc = 'Debug: Step Out' })
    keymap.set('n', '<f10>', dapui.toggle, { desc = 'Debug: Toggle DAPUI' })
    keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
    keymap.set(
      'n',
      '<leader>B',
      function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end,
      { desc = 'Debug: Set Breakpoint' }
    )

    dapui.setup({
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    })

    -- Breakpoint Icons
    vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
    vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
    local breakpoint_icons = vim.g.have_nerd_font
        and {
          Breakpoint = '',
          BreakpointCondition = '',
          BreakpointRejected = '',
          LogPoint = '',
          Stopped = '',
        }
      or {
        Breakpoint = '●',
        BreakpointCondition = '⊜',
        BreakpointRejected = '⊘',
        LogPoint = '◆',
        Stopped = '⭔',
      }
    for type, icon in pairs(breakpoint_icons) do
      local tp = 'Dap' .. type
      local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
      vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
    end

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close
  end,
}
