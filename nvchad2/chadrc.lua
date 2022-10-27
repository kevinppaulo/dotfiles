local M = {}

require "custom.autocmds"

-- local override = require("custom.override")

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme_toggle = { "yoru", "gruvbox_light" },
   theme = "yoru",
}


M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

return M
