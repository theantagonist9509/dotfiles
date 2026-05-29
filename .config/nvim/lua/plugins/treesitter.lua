return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'lua',
        'make',
        'markdown',
        'python',
        'zig',
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
