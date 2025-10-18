return {
  "ThePrimeagen/harpoon",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - math.floor(vim.api.nvim_win_get_width(0) * 0.2),
      }
    })
  end
}
