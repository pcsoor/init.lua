return {
    "rmagatti/auto-session",
    lazy = false,
    opts = {
        suppressed_dirs = { "~/", "~/Downloads", "~/Documents", "/" },
        post_restore_cmds = {
            function()
                vim.schedule(function()
                    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
                        if vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted then
                            vim.api.nvim_buf_call(buf, function()
                                vim.cmd("edit!")
                            end)
                        end
                    end
                end)
            end,
        },
    },
}
