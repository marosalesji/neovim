return {
  "kdheepak/lazygit.nvim",
  -- Asegúrate de que 'toggleterm.nvim' esté instalado (LazyVim ya lo incluye)
  dependencies = {
    "nvim-lua/plenary.nvim",
    "akinsho/toggleterm.nvim",
  },
  keys = {
    { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Abrir LazyGit" },
  },
}
