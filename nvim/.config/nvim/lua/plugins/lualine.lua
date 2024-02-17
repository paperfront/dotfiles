return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "f-person/git-blame.nvim",
  },
  opts = function()
    local icons = require("lazyvim.config").icons
    local Util = require("lazyvim.util")
    local git_blame = require("gitblame")
    -- This disables showing of the blame text next to the cursor
    vim.g.gitblame_display_virtual_text = 0

    return {
      options = {
        icons_enabled = true,
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icon = "",
            separator = { left = "", right = "" },
            color = {
              fg = "#1c1d21",
              bg = "#b4befe",
            },
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
            separator = { left = "", right = "" },
            color = {
              fg = "#1c1d21",
              bg = "#7d83ac",
            },
          },
          {
            "diff",
            separator = { left = "", right = "" },
            color = {
              fg = "#1c1d21",
              bg = "#7d83ac",
            },
          },
        },
        lualine_c = {
          {
            "diagnostics",
            separator = { left = "", right = "" },
            color = {
              bg = "#45475a",
            },
          },
          {
            "filename",
          },
          {
            git_blame.get_current_blame_text,
            cond = git_blame.is_blame_text_available,
          },
        },
        lualine_x = {
          -- stylua: ignore
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
            color = Util.ui.fg("Statement"),
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = Util.ui.fg("Constant"),
          },
          "filesize",
        },
        lualine_y = {
          {
            "filetype",
            icons_enabled = false,
            color = {
              fg = "#1C1D21",
              bg = "#eba0ac",
            },
          },
        },
        lualine_z = {
          {
            "location",
            icon = "",
            color = {
              fg = "#1c1d21",
              bg = "#f2cdcd",
            },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
