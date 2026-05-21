return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      integrations = {
        treesitter = true,
        gitsigns = true,
        telescope = { enabled = true },
        mason = true,
        which_key = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },
}
