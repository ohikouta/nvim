return {
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add    = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
      },
      current_line_blame = true,
      current_line_blame_opts = { delay = 500 },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns
        local map = function(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end
        map("n", "]h", gs.next_hunk,        "Next Hunk")
        map("n", "[h", gs.prev_hunk,        "Prev Hunk")
        map("n", "<leader>ghs", gs.stage_hunk,   "Stage Hunk")
        map("n", "<leader>ghr", gs.reset_hunk,   "Reset Hunk")
        map("n", "<leader>ghS", gs.stage_buffer, "Stage Buffer")
        map("n", "<leader>ghd", gs.diffthis,     "Diff This")
        map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "Blame Line")
      end,
    },
  },
}
