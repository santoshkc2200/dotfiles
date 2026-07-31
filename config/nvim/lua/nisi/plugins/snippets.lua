local config = require("nisi").config

return {
  {
    "hrsh7th/vim-vsnip",
    cond = not vim.g.vscode,
    dependencies = {
      "hrsh7th/vim-vsnip-integ",
    },
    config = function()
      -- local snippet_dir = config.snippets_dir or os.getenv("DOTFILES") .. "/config/nvim/snippets"
      local snippet_dir = config.snippets_dir or (vim.fn.stdpath("config") .. "/snippets")

      vim.g.vsnip_snippet_dir = snippet_dir
      vim.g.vsnip_filetypes = {
        javascriptreact = { "javascript" },
        typescriptreact = { "typescript" },
        ["typescript.tsx"] = { "typescript" },
      }
    end,
  },
}
