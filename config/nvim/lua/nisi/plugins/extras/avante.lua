return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = "make",
    cond = not vim.g.vscode,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = { insert_mode = true },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        optional = true,
        ft = { "markdown", "Avante" },
      },
    },
    opts = {
      provider = "nvidia_glm52",
      providers = {
        nvidia_glm52 = {
          __inherited_from = "openai",
          api_key_name = "NVIDIA_API_KEY",
          endpoint = "https://integrate.api.nvidia.com/v1",
          model = "z-ai/glm-5.2",
        },
        nvidia_minimax_m3 = {
          __inherited_from = "openai",
          api_key_name = "NVIDIA_API_KEY",
          endpoint = "https://integrate.api.nvidia.com/v1",
          model = "minimaxai/minimax-m3",
        },
        nvidia_deepseek_v4_pro = {
          __inherited_from = "openai",
          api_key_name = "NVIDIA_API_KEY",
          endpoint = "https://integrate.api.nvidia.com/v1",
          model = "deepseek-ai/deepseek-v4-pro",
        },
        nvidia_deepseek_v4_flash = {
          __inherited_from = "openai",
          api_key_name = "NVIDIA_API_KEY",
          endpoint = "https://integrate.api.nvidia.com/v1",
          model = "deepseek-ai/deepseek-v4-flash",
        },
        nvidia_nemotron3_ultra = {
          __inherited_from = "openai",
          api_key_name = "NVIDIA_API_KEY",
          endpoint = "https://integrate.api.nvidia.com/v1",
          model = "nvidia/nemotron-3-ultra-550b-a55b",
        },
      },
    },
    keys = {
      {
        "<leader>am",
        function()
          local providers = {
            "nvidia_glm52",
            "nvidia_minimax_m3",
            "nvidia_deepseek_v4_pro",
            "nvidia_deepseek_v4_flash",
            "nvidia_nemotron3_ultra",
          }
          local cur = require("avante.config").provider
          vim.ui.select(providers, { prompt = "Select Avante provider", default = cur }, function(choice)
            if not choice then
              return
            end
            require("avante.api").switch_provider(choice)
          end)
        end,
        desc = "Select Avante provider/model",
      },
    },
  },
}
