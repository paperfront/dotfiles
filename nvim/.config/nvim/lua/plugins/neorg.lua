return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  -- tag = "*",
  lazy = true, -- enable lazy load
  ft = "norg", -- lazy load on file type
  cmd = "Neorg", -- lazy load on command
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.keybinds"] = {
          -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
          config = {
            default_keybinds = true,
          },
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
              cplusplus = "~/cplusplus",
            },
            default_workspace = "notes",
          },
        },
        ["core.ui"] = {},
        ["core.ui.calendar"] = {},
      },
    })
  end,
}
