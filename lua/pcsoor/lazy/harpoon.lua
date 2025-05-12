return {
  "ThePrimeagen/harpoon",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end)
    vim.keymap.set("n", "<leader>e", function() require("harpoon.ui").toggle_quick_menu() end)
    vim.keymap.set("n", "<leader>]", function() require("harpoon.ui").nav_next() end)
    vim.keymap.set("n", "<leader>[", function() require("harpoon.ui").nav_prev() end)

    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - math.floor(vim.api.nvim_win_get_width(0) * 0.2),
      }
    })
  end
}
