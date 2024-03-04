-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("BufWinEnter", {
  command = "set formatoptions-=cro",
})

local file_exists_and_is_empty = function(filepath)
  local file = io.open(filepath, "r")
  if file ~= nil then
    local content = file:read("*all")
    file:close()
    return content == ""
  else
    return false
  end
end

vim.api.nvim_create_autocmd({ "BufNew", "BufNewFile" }, {
  callback = function(args)
    local toc = "index.norg"

    vim.schedule(function()
      if vim.fn.fnamemodify(args.file, ":t") == toc then
        return
      end
      if args.event == "BufNewFile" or (args.event == "BufNew" and file_exists_and_is_empty(args.file)) then
        vim.api.nvim_cmd({ cmd = "Neorg", args = { "templates", "fload", "journal" } }, {})
      end
    end)
  end,
  desc = "Load new workspace entries within a Neorg template",
  pattern = "/Users/mlacayo/neorg_notes/journal/*.norg",
})
