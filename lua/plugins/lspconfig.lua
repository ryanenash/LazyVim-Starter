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
      -- Yarn PnP workaround for a specific project — DO NOT enable globally.
      -- For projects that need it, put this in the repo instead:
      --   .neoconf.json: { "lspconfig": { "vtsls": { "settings": { "typescript": { "tsdk": ".yarn/sdks/typescript/lib" } } } } }
      --   or .vscode/settings.json: { "typescript.tsdk": ".yarn/sdks/typescript/lib" }
      -- vtsls = {
      --   settings = {
      --     typescript = {
      --       tsdk = "./.yarn/sdks/typescript/lib",
      --     },
      --   },
      -- },
    },
  },
}
