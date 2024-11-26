return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "css-lsp",
        "prettier",
      },
    },
  },

  -- Support Blade avec Treesitter
  {
    "jwalton512/vim-blade",
    ft = "blade", -- chargement uniquement pour les fichiers .blade.php
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "williamboman/mason.nvim",
    },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "javascript",
          "typescript",
          "css",
          "gitignore",
          "graphql",
          "blade",
          "http",
          "json",
          "scss",
          "sql",
          "vim",
          "lua",
          "php",
          "c",
          "c++",
        },
        highlight = { enable = true },
        auto_install = true,
        query_linter = {
          enable = true,
          use_virtual_text = true,
          lint_events = { "BufWrite", "CursorHold" },
        },
      })
    end,

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- Mapping spécifique Blade si nécessaire
      vim.filetype.add({
        extension = {
          blade = "blade",
        },
      })
    end,
  },
}
