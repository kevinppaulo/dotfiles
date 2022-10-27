require "custom.autocmds"


local window =  vim.wo
window.colorcolumn = '100'

local autocmd = vim.api.nvim_create_autocmd
local new_cmd = vim.api.nvim_create_user_command
local opt = vim.opt

vim.cmd("set noswapfile")
vim.cmd("set nowrap")

-- autocmds
autocmd("FileType", {
   pattern = "norg",
   callback = function()
      -- vim.opt.laststatus = 0
      opt.number = false
      opt.showtabline = 0
      opt.cole = 1
      opt.foldlevel = 10
   end,
})

-- autocmds
autocmd("FileType", {
   pattern = "javascriptreact",
   callback = function()
      -- vim.opt.laststatus = 0
      vim.cmd('set expandtab')
      vim.cmd('set shiftwidth=4')
      vim.cmd('set tabstop=4')
   end,
})

-- commands

-- I dont use shade.nvim/autosave.nvim all the time so made commands for them 
-- So this makes easy to lazy load them at cmds

new_cmd("EnableShade", function()
   require("shade").setup()
end, {})

new_cmd("EnableAutosave", function()
   require("autosave").setup()
end, {})

