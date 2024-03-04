return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  -- tag = "*",
  lazy = true, -- enable lazy load
  ft = "norg", -- lazy load on file type
  cmd = "Neorg", -- lazy load on command
  dependencies = { "nvim-lua/plenary.nvim", { "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } } },
  config = function()
    require("neorg").setup({
      load = {
        ["external.templates"] = {},
        ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
        ["core.integrations.nvim-cmp"] = {},
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.keybinds"] = {
          -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
          config = {
            default_keybinds = true,
            neorg_leader = "<LocalLeader>",
            hook = function(keybinds)
              keybinds.unmap("norg", "n", keybinds.leader .. "id")
              local wk = require("which-key")
              wk.register({
                n = {
                  name = "New",
                  n = {
                    "<cmd>Neorg keybind norg core.dirman.new.note",
                    "New File",
                  },
                },
                i = {
                  name = "Insert",
                  d = { "a<Space>(<C-r>=strftime('%a %d %b %Y')<CR>)<Esc>", "Date" },
                },
                j = {
                  name = "Journal",
                  t = { "<cmd>Neorg journal today<cr>", "Today" },
                  p = { "<cmd>Neorg journal yesterday<cr>", "Yesterday" },
                  n = { "<cmd>Neorg journal tomorrow<cr>", "Tomorrow" },
                },
              }, { prefix = "<LocalLeader>" })
            end,
          },
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/neorg_notes",
              cplusplus = "~/cplusplus",
            },
            default_workspace = "notes",
          },
        },
        ["core.ui"] = {},
        ["core.ui.calendar"] = {},
        ["core.journal"] = {
          config = {
            use_template = false,
          },
        },
      },
    })
  end,
}
