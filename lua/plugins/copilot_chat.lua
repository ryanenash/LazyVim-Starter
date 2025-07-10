return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  cmd = "CopilotChat",
  config = function()
    require("CopilotChat").setup({
      debug = true, -- Enable debugging
      model = "claude-sonnet-4", -- Default model
      -- Add other configuration options here
    })
  end,
}
