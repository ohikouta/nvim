return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓


           ██████╗  ██████╗ ██████╗ ███████╗
          ██╔════╝ ██╔═══██╗██╔══██╗██╔════╝
          ██║      ██║   ██║██║  ██║█████╗
          ██║      ██║   ██║██║  ██║██╔══╝
          ╚██████╗ ╚██████╔╝██████╔╝███████╗
           ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝


  ──────────────────────────────────────────────────────────────────────────────
                     write code.   enjoy the craft.   ship it.
  ──────────────────────────────────────────────────────────────────────────────


░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓░░░░▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
          keys = {
            { icon = " ", key = "f", desc = "Find File",    action = ":lua LazyVim.pick()()" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua LazyVim.pick('oldfiles')()" },
            { icon = " ", key = "g", desc = "Find Text",    action = ":lua LazyVim.pick('live_grep')()" },
            { icon = " ", key = "n", desc = "New File",     action = ":ene | startinsert" },
            { icon = " ", key = "G", desc = "Lazygit",      action = ":LazyGit" },
            { icon = " ", key = "q", desc = "Quit",         action = ":qa" },
          },
        },
      },
    },
    init = function()
      local function set_hl()
        vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#FF8C00", bold = true })
      end
      set_hl()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_hl })
    end,
  },
}
