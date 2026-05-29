require("config.lazy")

vim.o.number = true
vim.o.relativenumber = true
vim.opt.clipboard:append { 'unnamedplus' }

vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.shiftwidth = 4     -- Size of an indent
vim.opt.tabstop = 4        -- Number of spaces tabs count for
vim.opt.softtabstop = 4    -- Number of spaces tabs count for while editing

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'lua',
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end
})
