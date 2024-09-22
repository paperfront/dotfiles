return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.spec = vim.tbl_deep_extend("force", opts.spec, {
      { "<leader>t", group = "Twilight" },
    })
  end,
  -- opts = {
  --   win = {
  --     border = "single",
  --   },
  --   plugins = { spelling = true },
  --   -- defaults = {
  --   --   mode = { "n", "v" },
  --   --   { "<leader><tab>", group = "tabs" },
  --   --   { "<leader>b", group = "buffer" },
  --   --   { "<leader>c", group = "code" },
  --   --   { "<leader>f", group = "file/find" },
  --   --   { "<leader>g", group = "git" },
  --   --   { "<leader>gh", group = "hunks" },
  --   --   { "<leader>h", group = "harpoon" },
  --   --   { "<leader>q", group = "quit/session" },
  --   --   { "<leader>s", group = "search" },
  --   --   { "<leader>t", group = "Twilight" },
  --   --   { "<leader>u", group = "ui" },
  --   --   { "<leader>w", group = "windows" },
  --   --   { "<leader>x", group = "diagnostics/quickfix" },
  --   --   { "[", group = "prev" },
  --   --   { "]", group = "next" },
  --   --   { "g", group = "goto" },
  --   --   { "gs", group = "surround" },
  --   -- },
  -- },
}
