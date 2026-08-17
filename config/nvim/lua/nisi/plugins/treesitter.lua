local languages = {
  "astro",
  "bash",
  "blade",
  "c",
  "comment",
  "cpp",
  "css",
  "diff",
  "dockerfile",
  "elixir",
  "eex",
  "hcl",
  "heex",
  "git_rebase",
  "gitcommit",
  "gitignore",
  "html",
  "javascript",
  "jsdoc",
  "json",
  "json5",
  "lua",
  "markdown",
  "markdown_inline",
  "pug",
  "python",
  "regex",
  "ruby",
  "rust",
  "tsx",
  "typescript",
  "vim",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "main",
        config = function()
          require("nvim-treesitter-textobjects").setup({
            select = { lookahead = true },
          })

          local select = require("nvim-treesitter-textobjects.select")
          vim.keymap.set({ "x", "o" }, "af", function()
            select.select_textobject("@function.outer", "textobjects")
          end, { desc = "Select outer function" })
          vim.keymap.set({ "x", "o" }, "if", function()
            select.select_textobject("@function.inner", "textobjects")
          end, { desc = "Select inner function" })
          vim.keymap.set({ "x", "o" }, "ac", function()
            select.select_textobject("@class.outer", "textobjects")
          end, { desc = "Select outer class" })
          vim.keymap.set({ "x", "o" }, "ic", function()
            select.select_textobject("@class.inner", "textobjects")
          end, { desc = "Select inner class" })
        end,
      },
      "JoosepAlviste/nvim-ts-context-commentstring",
      {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
          vim.g.rainbow_delimiters = {
            condition = function(bufnr)
              return vim.api.nvim_buf_line_count(bufnr) <= 1000
            end,
          }
        end,
      },
    },
    config = function()
      local treesitter = require("nvim-treesitter")
      treesitter.setup()
      treesitter.install(languages)

      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })
      vim.treesitter.language.register("markdown", { "md", "mdx" })
      vim.treesitter.language.register("json", "jsonc")

      local group = vim.api.nvim_create_augroup("NisiTreesitter", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        group = group,
        callback = function(args)
          local has_parser = pcall(vim.treesitter.get_parser, args.buf)
          if not has_parser then
            return
          end

          local started = pcall(vim.treesitter.start, args.buf)
          if not started then
            return
          end

          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
