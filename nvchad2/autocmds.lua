local autocmd = vim.api.nvim_create_autocmd

local set = vim.opt

vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.swapfile = false

autocmd("FileType", {
   pattern = "java",
   callback = function()
     set.tabstop = 4
     set.softtabstop = 4
     set.shiftwidth = 4
   end,
})

autocmd("FileType", {
   pattern = "lua",
   callback = function()
     set.tabstop = 2
     set.softtabstop = 2
     set.shiftwidth = 2
   end,
})
