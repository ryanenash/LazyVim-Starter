return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      -- Disables inline text diagnostics
      virtual_text = false,
    },
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      basedpyright = {
        settings = {
          basedpyright = { -- NOTE: can be python for per file type config or basedpyright for global config
            analysis = {
              diagnosticSeverityOverrides = {
                reportUnusedImport = "none",
                reportUnusedVariable = "none",
                reportUnusedClass = "none",
                reportUnusedFunction = "none",
              },
            },
          },
        },
      },
      ruff = {},
      vtsls = {
        settings = {
          typescript = {
            tsdk = "./.yarn/sdks/typescript/lib",
          },
          preferences = {
            displayPartsForJSDoc = true,
            generateReturnInDocTemplate = true,
            -- includeInlayParameterNameHints = "all",
            -- includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            -- includeInlayFunctionParameterTypeHints = true,
            -- includeInlayVariableTypeHints = true,
            -- includeInlayPropertyDeclarationTypeHints = true,
            -- includeInlayFunctionLikeReturnTypeHints = true,
            -- includeInlayEnumMemberValueHints = true,
            -- includeCompletionsForImportStatements = true,
            -- includeAutomaticOptionalChainCompletions = true,
          },
          suggest = {
            completeFunctionCalls = true,
            includeCompletionsForImportStatements = true,
            jsdoc = {
              generateReturns = true,
              generateParams = true,
            },
          },
          format = {
            enable = true,
          },
        },
      },
      eslint = {},
    },
  },
}
