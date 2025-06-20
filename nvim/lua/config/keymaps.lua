-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keymaps
local key = vim.keymap.set

--key("v", "K", ":m '<-3<CR>gv=gv")
--key("v", "J", ":m '>+-1<CR>gv=gv")

-- Save files / Salve all files and quit
key({ "n", "i", "v" }, "<C-s>", "<CMD>w<CR>", { desc = "[S]ave the current file." })
key({ "n", "i", "v" }, "<C-q>", "<CMD>wqa<CR>", { desc = "Save all files and [Q]uit." })

key("n", "<C-j>", ":m+1<CR>")
key("n", "<C-k>", ":m-2<CR>")

-- Moviment Buffers
key("n", "<S-h>", ":bprevious<CR>", { desc = "previous buffer" })
key("n", "<S-l>", ":bnext<CR>", { desc = "next buffer" })
