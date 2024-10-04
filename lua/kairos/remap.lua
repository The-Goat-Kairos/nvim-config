vim.g.mapleader = " "
vim.keymap.set("n", "<BS><BS>", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "K", vim.lsp.buf.hover)

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionzer<CR>")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("x", "<leader>p", [["_dP"]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>f", [[:!mpv ~/Desktop/Projects/Fuck/'Fuck Scream.mp3'<CR>]])

vim.keymap.set("n", "<C-o>", "o<Esc>0")
vim.keymap.set("n", "<C-O>", "O<Esc>0")

-- Asterixizing(?)
vim.keymap.set('n', '<C-a>', 'I*<Esc>A*<Esc>')
vim.keymap.set('v', '<C-a>', 'c*<C-r>"*<Esc>')

-- Strikethrough
vim.keymap.set('n', '<C-s>', 'I~~<Esc>A~~<Esc>')
vim.keymap.set('v', '<C-s>', 'c~~<C-R>"~~<Esc>')
