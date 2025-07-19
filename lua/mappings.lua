require "nvchad.mappings"

-- my configs in nvim
local map = vim.keymap.set

map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Abrir/Fechar Explorer" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>")

map({"n"}, "<C-j>", ":m+1<CR>")
map({"n"}, "<C-k>", ":m-2<CR>")

map("n", "<S-h>", ":bprevious<CR>", { desc = "Buffer anterior" })
map("n", "<S-l>", ":bnext<CR>", { desc = "Próximo buffer" })

map("n", "<C-w>", "<cmd>bdelete<CR>", { desc = "Fechar buffer atual" })
