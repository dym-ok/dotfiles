return {
  {
    "hrsh7th/nvim-cmp",
    version = false,

    dependencies = {
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-emoji",
    },
    opts = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol", -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            -- can also be a function to dynamically calculate max width such as
            -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
            ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
            show_labelDetails = true, -- show labelDetails in menu. Disabled by default

            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            -- before = function (entry, vim_item)
            --   ...
            --   return vim_item
            -- end
          }),
        },
      })
      return {
        -- snippet = {
        --   expand = function(args)
        --     vim.fn["vsnip#anonymous"](args.body)
        --   end,
        -- },
        mapping = {
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete({
            config = {
              sources = {
                { name = "cody" },
              },
            },
          }),
          ["<C-e>"] = cmp.mapping.close(),
          ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          }),
        },
        sources = {
          -- { name = "copilot", group_index = 2 },
          { name = "cody", group_index = 2 },
          { name = "nvim_lsp", group_index = 3 },
          { name = "vsnip", group_index = 3 },
          { name = "buffer", group_index = 3 },
          { name = "path", group_index = 3 },
          { name = "emoji", group_index = 3 },
        },
      }
    end,
  },
}
