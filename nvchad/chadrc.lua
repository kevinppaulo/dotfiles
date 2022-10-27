local M = {}

local override = require("custom.override")

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "radium",
}

M.mappings = {


  tabufline = {
    n = {
        -- new buffer
        ["<C-n>"] = { "<cmd> enew <CR>", "烙 new buffer" },

        -- cycle through buffers
        ["L"] = { "<cmd> Tbufnext <CR>", "  goto next buffer" },
        ["H"] = { "<cmd> Tbufprev <CR> ", "  goto prev buffer" },

        -- cycle through tabs
        ["<leader>tp"] = { "<cmd> tabprevious <CR>", "  goto next tab" },
        ["<leader>tn"] = { "<cmd> tabnext <CR> ", "  goto prev tab" },

        -- close buffer + hide terminal buffer
        ["<leader>c"] = {
           function()
              require("core.utils").close_buffer()
           end,
           "   close buffer",
        },
    },
  },

  nvimtree = {
    n = {
      -- toggle
      ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    },
  },

  telescope = {
    n = {
      -- find
      ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
    },
  }
}

M.plugins = {
  user = require "custom.plugins",
  options = {
    lspconfig = {
       setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  override = {
    ["akinsho/bufferline.nvim"] = override.bufferline
  }

}

return M
