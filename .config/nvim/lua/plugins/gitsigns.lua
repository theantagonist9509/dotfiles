return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup({
      current_line_blame = false,
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set('n', ']h', function() gs.nav_hunk('next') end, { buffer = bufnr, desc = 'Next Hunk' })
        vim.keymap.set('n', '[h', function() gs.nav_hunk('prev') end, { buffer = bufnr, desc = 'Prev Hunk' })
        vim.keymap.set('n', '<leader>hb', gs.blame_line, { buffer = bufnr, desc = 'Blame Line' })
      end
    })
  end,
}
