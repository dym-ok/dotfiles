return {
  --   {
  --     "neovim/nvim-lspconfig",
  --     config = function()
  --       require("lspconfig").yamlls.setup({
  --         yaml = {
  --           editor = {
  --             tabSize = 2,
  --           },
  --           format = {
  --             singleQuote = true,
  --           },
  --         },
  --       })
  --       -- Configuration here, or leave empty to use defaults)
  --     end,
  --   },
}
