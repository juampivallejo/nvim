-- Setup LSP Config

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    ---@diagnostic disable-next-line: missing-fields
    servers = {
      pyright = {},
      gopls = {},
      lua_ls = {},
    },
  },
}
