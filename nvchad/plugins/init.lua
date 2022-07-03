return {
  ["github/copilot.vim"] = { after = "nvim-lspconfig" },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
       require("custom.plugins.null-ls").setup()
    end,
 },
  -- load it after nvim-lspconfig cuz we lazy loaded lspconfig
}
