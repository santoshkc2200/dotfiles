return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      -- Install parsers explicitly
      require('nvim-treesitter').install {
        'lua',
        'python',
        'javascript',
        'typescript',
        'vimdoc',
        'vim',
        'regex',
        'terraform',
        'sql',
        'dockerfile',
        'toml',
        'json',
        'java',
        'groovy',
        'go',
        'gitignore',
        'graphql',
        'yaml',
        'make',
        'cmake',
        'markdown',
        'markdown_inline',
        'bash',
        'tsx',
        'css',
        'html',
      }

      -- Enable highlighting per filetype
      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          vim.treesitter.start()
        end,
      })

      -- Enable treesitter indentation (experimental)
      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
