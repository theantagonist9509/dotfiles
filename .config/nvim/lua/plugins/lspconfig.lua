return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'clangd',
          'gopls',
          'lua_ls',
          -- 'pyright',
          'zls',
        },
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
    config = function()
      local on_attach = function(_, bufnr)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {
          buffer = bufnr,
          silent = true,
        })
      end

      -- Set default config for ALL LSPs
      vim.lsp.config('*', {
        on_attach = on_attach,
      })

      -- Set specific settings for lua_ls
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      })

      -- Enable the desired LSPs
      vim.lsp.enable('clangd')
      vim.lsp.enable('gopls')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('pyright')
      vim.lsp.enable('zls')

      vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
      })
    end,
  },
}
