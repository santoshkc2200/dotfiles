local formatters = {
  javascript = { "biome", "vpfmt", "oxfmt" },
  javascriptreact = { "biome", "vpfmt", "oxfmt" },
  typescript = { "biome", "vpfmt", "oxfmt" },
  typescriptreact = { "biome", "vpfmt", "oxfmt" },
  markdown = { "biome", "vpfmt", "oxfmt" },
  astro = { "biome", "vpfmt", "oxfmt" },
  json = { "biome", "vpfmt", "oxfmt" },
  jsonc = { "biome", "vpfmt", "oxfmt" },
  html = { "biome", "vpfmt", "oxfmt" },
  yaml = { "dprint", "vpfmt", "oxfmt" },
  css = { "stylelint", "biome", "vpfmt", "oxfmt" },
  scss = { "stylelint" },
  sh = { "shellcheck", "shfmt" },
  python = { "black", "isort" },
  go = { "gofmt" },
  lua = { "stylua" },
  ruby = { "rubocop" },
  php = { "pint" },
  rust = { "rustfmt" },
  toml = { "dprint" },
  sql = { "sqlfluff" },
  c = { "clang-format" },
  cpp = { "clang-format" },
  elixir = { "mix" },
  dockerfile = { "dprint" },
  terraform = { "terraform_fmt" },
  ["terraform-vars"] = { "terraform_fmt" },
  hcl = { "terraform_fmt" },
}

return {
  {
    "liuchengxu/vista.vim",
    lazy = true,
    cmd = "Vista",
    cond = not vim.g.vscode,
    config = function()
      vim.g.vista_default_executive = "nvim_lsp"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    cond = not vim.g.vscode,
    dependencies = {
      -- Helpers to install LSPs and maintain them
      {
        "williamboman/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        },
      },
      { "williamboman/mason-lspconfig.nvim", version = "^1.0.0" },
      "saghen/blink.cmp",
    },
    config = function()
      require("nisi.plugins.lsp.config").setup()
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = false,
      },
      default_format_opts = {
        stop_after_first = true,
      },
      formatters_by_ft = formatters,
      formatters = {
        vpfmt = {
          command = "vp",
          args = { "fmt", "$FILENAME", "--write" },
          stdin = false,
        },
      },
    },
  },

  {
    "folke/trouble.nvim",
    config = true,
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "vuki656/package-info.nvim",
    config = true,
  },
}
