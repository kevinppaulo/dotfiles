local M = {}

local override = require("custom.override")

M.tabufline = {
  n = {

    ["L"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["H"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

      -- new buffer
      ["<C-n>"] = { "<cmd> enew <CR>", "烙 new buffer" },

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
  }
}

M.nvimtree = {
  n = {
    -- toggle
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
  },
}

M.telescope = {
  n = {
    -- find
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
  },
}

return M
