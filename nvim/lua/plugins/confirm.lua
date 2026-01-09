return {
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      -- Formatters by filetype
      formatters_by_ft = {
        go = { 'goimports', 'gofumpt' },
        javascript = { 'biome' },
        typescript = { 'biome' },
        javascriptreact = { 'biome' },
        typescriptreact = { 'biome' },
        svelte = { 'biome' },
        css = { 'biome' },
        html = { 'biome' },
        json = { 'biome' },
        yaml = { 'biome' },
        markdown = { 'biome' },
        graphql = { 'biome' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
      log_level = vim.log.levels.ERROR,
      notify_on_error = true,
    },
  },
}
