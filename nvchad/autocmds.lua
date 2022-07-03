local autocmd = vim.api.nvim_create_autocmd

local set = vim.opt

autocmd("FileType", {
   pattern = "java",
   callback = function()
     set.tabstop = 4
     set.softtabstop = 4
     set.shiftwidth = 4
   end,
})
