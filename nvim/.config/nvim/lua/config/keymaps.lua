-- Better paste
vim.keymap.set("x", "p", "P")

-- Move selected lines with shift+j or shift+k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join line while keeping the cursor in the same position
-- vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor centred while scrolling up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Next and previous instance of the highlighted letter
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- Better paste (prevents new paste buffer)
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Fixed ctrl+c weirdness to exit from vertical select mode
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- Quickfix navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace current position word
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make file executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Undotree
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)

-- Oil
vim.keymap.set("n", "<leader>e", "<cmd>lua require('oil').toggle_float()<CR>", { desc = "Oil" })

-- Twilight
vim.keymap.set("n", "<leader>tt", "<cmd>Twilight<CR>", { desc = "Toggle Twilight" })

-- Zen mode
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle Zen Mode" })

-- Tmux window switching from Neovim
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")

-- Neorg
vim.keymap.set("n", "<leader>n", "<cmd> Neorg workspace notes<CR>")

-- Neovim Pet
-- vim.keymap.set("n", "<leader>;", function()
--   require("duck").hatch("🐿️", 2)
-- end, {})

-- vim.keymap.set("n", "<leader>;;", function()
--   require("duck").cook()
-- end, {})
--

-- Compiler
-- vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>cd %:h<cr><cmd>CompilerOpen<cr>", { noremap = true, silent = true })
