return {
  "github/copilot.vim",
  init = function()
    -- inline suggestions off; `:Copilot enable` turns them back on for the session
    vim.g.copilot_enabled = false
  end,
}
