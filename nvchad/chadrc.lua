local M = {}

local override = require("custom.override")

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "rxyhn",
}

M.mappings = {
  bufferline = {
   n = {
      ["L"] = { "<cmd> BufferLineCycleNext <CR>", "  cycle next buffer" },
      ["H"] = { "<cmd> BufferLineCyclePrev <CR>", "  cycle prev buffer" },

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
