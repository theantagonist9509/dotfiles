return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup({
      current_line_blame = false,
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set('n', '<leader>bl', gs.blame_line, { buffer = bufnr, desc = 'Blame Line' })
        vim.keymap.set('n', ']h', gs.next_hunk, { buffer = bufnr, desc = 'Next Hunk' })
        vim.keymap.set('n', '[h', gs.prev_hunk, { buffer = bufnr, desc = 'Prev Hunk' })
        vim.keymap.set('n', '<leader>ph', gs.preview_hunk_inline, { buffer = bufnr, desc = 'Preview Hunk' })
      end
    })
  end,
}
