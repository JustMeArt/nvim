return {
  "gruvw/strudel.nvim",
  build = "npm ci",
  config = function()
    require("strudel").setup()

    local strudel = require("strudel")
    vim.keymap.set("n", "<leader>sl", strudel.launch, { desc = "Strudel: Launch" })
    vim.keymap.set("n", "<leader>sq", strudel.quit, { desc = "Strudel: Quit" })
    vim.keymap.set("n", "<leader>st", strudel.toggle, { desc = "Strudel: Toggle Play/Stop" })
    vim.keymap.set("n", "<leader>su", strudel.update, { desc = "Strudel: Update" })
    vim.keymap.set("n", "<leader>ss", strudel.stop, { desc = "Strudel: Stop" })
    vim.keymap.set("n", "<leader>sb", strudel.set_buffer, { desc = "Strudel: Set Buffer" })
    vim.keymap.set("n", "<leader>sx", strudel.execute, { desc = "Strudel: Set & Update" })
  end,
}
