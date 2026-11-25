-- CSS と Tailwind CSS
-- cssls（vscode-css-language-server）: CSS の補完・診断・ホバー
-- tailwindcss: lazyvim.json の extras（lang.tailwind）で有効にしている
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "css" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {
          settings = {
            -- Tailwind v4 の @theme、@custom-variant、@apply などを不明な at-rule として警告しない
            css = { lint = { unknownAtRules = "ignore" } },
          },
        },
      },
    },
  },
}
