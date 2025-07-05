return {
  "neovim/nvim-lspconfig",
  opts = {
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
    },
  },
}
