return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "marilari88/neotest-vitest",
    },
    keys = {
        { "<leader>tn", function() require("neotest").run.run() end, desc = "Run nearest test" },
        { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run file tests" },
        { "<leader>to", function() require("neotest").output_panel.toggle() end, desc = "Toggle test output" },
        { "<leader>tp", function() require("neotest").summary.toggle() end, desc = "Toggle test summary" },
        { "<leader>tw", function() require("neotest").watch.toggle(vim.fn.expand("%")) end, desc = "Watch file tests" },
    },
    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-vitest"),
            },
        })
    end,
}
