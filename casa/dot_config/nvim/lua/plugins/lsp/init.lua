-- ================================================================================
-- * LspConfig (Global (not lang specific) LSP Setup)
-- ================================================================================

return {

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true, exclude = {} },
      codelens = { enabled = true },
      diagnostics = {
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "●",
        },
        signs = {
          text = { " ", " ", " ", "󰠠 " },
          numhl = {
            "DiagnosticSignError",
            "DiagnosticSignWarn",
            "DiagnosticSignInfo",
            "DiagnosticSignHint",
          },
        },
      },
      -- Global capabilities
      capabilities = {
        workspace = {
          -- Snacks file rename capabilities
          fileOperations = {
            didRename = true,
            willRename = true,
          },
        },
      },
      servers = {
        -- Python LSP customizations
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic", -- "off", "basic", "strict"
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                autoImportCompletions = true,
              },
            },
          },
        },
        -- TypeScript/JavaScript LSP customizations  
        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
            javascript = {
              inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
          },
        },
      },
    },
  },
}
