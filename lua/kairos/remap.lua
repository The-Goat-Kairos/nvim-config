vim.g.mapleader = " "
vim.keymap.set("n", "<BS><BS>", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

--vim.keymap.set("n", "~", "~h")

vim.keymap.set("v", ">>", ">><Esc>V")
vim.keymap.set("v", "<<", "<<<Esc>V")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("x", "<leader>p", [["_dP"]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>") -- People not gonna like this one

vim.keymap.set("n", "<leader>F", [[:!mpv ~/.config/nvim/lua/kairos/assets/'fuck.mp3'<CR>]])

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ bufnr = 0 })
end)

vim.keymap.set("n", "<C-O>", "O<Esc>0")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
