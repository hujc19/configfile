-- leader 键设置为空格
vim.g.mapleader = " "

-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 插入模下 nn 退出插入模式
vim.keybinds.gmap("i", "jj", "<Esc>", vim.keybinds.opts)

-- 输入模式，退出，保存
vim.keybinds.gmap("n", "q", ":q<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "qq", ":q!<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "Q", ":qa!<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "s", ":w<cr>", vim.keybinds.opts)

-- 将 C-k 和 C-j 调整为上下滑动 10 行而不是半页
vim.keybinds.gmap("n", "<C-k>", "10k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-j>", "10j", vim.keybinds.opts)

-- 视角移5行
vim.keybinds.gmap("n", "<a-k>", "<c-y>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<c-j>", "<c-e>", vim.keybinds.opts)

-- 用 H 和 L 代替 ^ 与 $
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)

-- 插入模式下的上下左右移动
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)

-- 修改分屏大小
vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)

-- 正常模式下按 ESC 取消高亮显示
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 通过 leader cs 切换拼写检查
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)
