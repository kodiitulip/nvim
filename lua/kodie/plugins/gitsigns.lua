return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    on_attach = function()
      local gs = package.loaded.gitsigns

      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { desc = desc })
      end

      map('n', ']h', gs.next_hunk, 'Next Hunk')
      map('n', '[h', gs.prev_hunk, 'Prev Hunk')

      map('n', '<leader>hs', gs.stage_hunk, 'Stage Hunk')
      map('n', '<leader>hr', gs.reset_hunk, 'Reset Hunk')

      map('n', '<leader>hu', gs.undo_stage_hunk, 'Undo Stage Hunk')
      map('n', '<leader>hp', gs.preview_hunk, 'Preview Hunk')

      map(
        'v',
        '<leader>hs',
        function() gs.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end,
        'Stage Hunk'
      )
      map(
        'v',
        '<leader>hr',
        function() gs.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end,
        'Next Hunk'
      )

      map('n', '<leader>hS', gs.stage_buffer, 'Stage Buffer')
      map('n', '<leader>hR', gs.reset_buffer, 'Reset Buffer')

      map(
        'n',
        '<leader>hb',
        function() gs.blame_line({ full = true }) end,
        'Blame Line'
      )

      map('n', '<leader>hB', gs.toggle_current_line_blame, 'Toggle Line Blame')

      map('n', '<leader>hd', gs.diffthis, 'Diff this')
      map('n', '<leader>hD', function() gs.diffthis('~') end, 'Diff this ~')
    end,
  },
}
