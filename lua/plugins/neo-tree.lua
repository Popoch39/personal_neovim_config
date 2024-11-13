return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true, -- Affiche les fichiers cachés
          hide_dotfiles = false, -- Désactive la suppression des fichiers avec un point au début
          hide_gitignored = false, -- Affiche aussi les fichiers ignorés par Git
        },
      },
    })
  end,
}
