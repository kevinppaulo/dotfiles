return {
  ["github/copilot.vim"] = { after = "nvim-lspconfig" },
  ["mfussenegger/nvim-dap"] = { after = "nvim-lspconfig" },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
       require "custom.plugins.null-ls"
    end,
  }
}
