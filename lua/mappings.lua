require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("t", "<ESC>", function()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_close(win, true)
end, { desc = "terminal close term in terminal mode" })

-- Split window management
map("n", "<leader>sv", "<C-w>v")     -- split window vertically
map("n", "<leader>sh", "<C-w>s")     -- split window horizontally
map("n", "<leader>se", "<C-w>=")     -- make split windows equal width
map("n", "<leader>sx", ":close<CR>") -- close split window
map("n", "<leader>sj", "<C-w>-")     -- make split window height shorter
map("n", "<leader>sk", "<C-w>+")     -- make split windows height taller
map("n", "<leader>sl", "<C-w>>5")    -- make split windows width bigger
map("n", "<leader>sh", "<C-w><5")    -- make split windows width smaller

-- Tab management
-- map("n", "<leader>to", ":tabnew<CR>")   -- open a new tab
-- map("n", "<leader>tx", ":tabclose<CR>") -- close a tab
-- map("n", "<leader>tn", ":tabn<CR>")     -- next tab
-- map("n", "<leader>tp", ":tabp<CR>")     -- previous tab

-- NvimTree
-- map("n", "<leader>ee", ":NvimTreeToggle<CR>")
-- map("n", "<leader>er", ":NvimTreeFocus<CR>")
-- map("n", "<leader>ef", ":NvimTreeFindFile<CR>")


-- Telescope
-- map('n', '<leader>ff', require('telescope.builtin').find_files, {})
-- map('n', '<leader>fg', require('telescope.builtin').live_grep, {})
-- map('n', '<leader>fb', require('telescope.builtin').buffers, {})
-- map('n', '<leader>fh', require('telescope.builtin').help_tags, {})
-- map('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {})
-- map('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- DAP
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "DAP Add breakpoint at line" })
map("n", "<leader>dso", "<cmd> DapStepOver <CR>", { desc = "DAP Step over" })
map("n", "<leader>dsi", "<cmd> DapStepIn <CR>", { desc = "DAP Step in" })
map("n", "<leader>dc", "<cmd> DapContinue <CR>", { desc = "DAP Continue" })
map("n", "<leader>dt", "<cmd> DapTerminate <CR>", { desc = "DAP Terminate" })
