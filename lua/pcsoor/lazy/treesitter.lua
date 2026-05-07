return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- nvim-treesitter v1 removed the configs module; setup() only accepts install_dir now.
      -- Highlighting and indentation are handled by Neovim's built-in vim.treesitter.
      require("nvim-treesitter").setup()

      local langs = {
        "vimdoc", "javascript", "typescript", "c", "lua", "rust",
        "jsdoc", "bash", "ruby", "vim", "html"
      }
      require("nvim-treesitter").install(langs)

      -- Disable highlighting for html, ruby, and large files via autocmd
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local lang = vim.bo[args.buf].filetype
          if lang == "html" or lang == "ruby" then
            vim.treesitter.stop(args.buf)
            return
          end
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(args.buf))
          if ok and stats and stats.size > max_filesize then
            vim.notify(
              "File larger than 100KB treesitter disabled for performance",
              vim.log.levels.WARN,
              { title = "Treesitter" }
            )
            vim.treesitter.stop(args.buf)
          end
        end,
      })

      vim.treesitter.language.register("templ", "templ")
    end
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    -- Corrected for Lazy.nvim
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require('treesitter-context').setup {
        enable = true,
        multiwindow = false,
        max_lines = 0,
        min_window_height = 0,
        line_numbers = true,
        multiline_threshold = 20,
        trim_scope = 'outer',
        mode = 'cursor',
        separator = nil,
        zindex = 20,
        on_attach = nil,
      }
    end
  }
}
