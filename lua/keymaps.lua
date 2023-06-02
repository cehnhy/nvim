vim.g.mapleader = ';'

vim.keymap.set('i', 'jk', '<ESC>')           -- ee进入normal模式
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- visual模式下，J和K可以移动选中的行
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
