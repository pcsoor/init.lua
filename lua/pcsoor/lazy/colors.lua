return {
  {
    "haishanh/night-owl.vim",
    config = function()
      -- vim.cmd("colorscheme night-owl")
    end
  },
  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    config = function()
      -- vim.cmd([[set background=light]])
      -- vim.cmd("colorscheme dawnfox")
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- vim.cmd([[set background=light]])
      -- vim.cmd("colorscheme rose-pine-dawn")
    end
  },
  {
    "loctvl842/monokai-pro.nvim",
    name = "monokai-pro",
    config = function()
    end
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd.colorscheme('gruvbox-material')
    end
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    config = function()
      vim.g.moonflyItalics = true
    end
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end
  },
  {
    "vague2k/vague.nvim",
    name = "vague",
    config = function()
      -- vim.cmd.colorscheme("vague")
    end
  },
  {
    "rakr/vim-one",
    config = function()
      -- vim.cmd([[colorscheme one]])
      -- vim.cmd([[set background=light]])
    end
  },
  {
    "NLKNguyen/papercolor-theme",
    config = function()
      -- vim.cmd.colorscheme("papercolor")
      -- vim.cmd([[set background=light]])
    end
  },
  {
    "nanotech/jellybeans.vim",
    config = function()
      -- vim.cmd.colorscheme("jellybeans")
    end
  }
}
