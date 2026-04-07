return {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
        { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open diff view" },
        { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
        { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
    },
    opts = {},
}
