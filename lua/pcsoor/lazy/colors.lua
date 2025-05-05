return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- vim.cmd("colorscheme rose-pine-moon")
    end
  },
  {
    "loctvl842/monokai-pro.nvim",
    name = "monokai-pro",
    config = function()
      -- vim.cmd("colorscheme monokai-pro")
    end
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd.colorscheme('gruvbox-material')
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme('moonfly')
    end
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      -- vim.cmd.colorscheme("kanagawa-dragon")
    end
  },
  {
    "vague2k/vague.nvim",
    name = "vague",
    config = function()
      vim.cmd.colorscheme("vague")
    end
  }
}
