vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<cmd>Oil<cr>", { desc = "Open file explorer" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>q", ":bd<Cr>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- go through errors in Trouble
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

-- move lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- search and replace the word under cursor
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- remove trailing whitespace
vim.keymap.set("n", "<leader>rw", [[:%s/\s\+$//e<CR>]])

-- window managements
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set('n', '<C-w>v', '<cmd>vnew<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>s', '<cmd>new<cr>', { noremap = true, silent = true })

-- resize splits (~20% of window size)
vim.keymap.set("n", "<C-w>H", function() vim.cmd("vertical resize -" .. math.floor(vim.o.columns * 0.05)) end, { desc = "Shrink split left" })
vim.keymap.set("n", "<C-w>L", function() vim.cmd("vertical resize +" .. math.floor(vim.o.columns * 0.05)) end, { desc = "Grow split right" })
vim.keymap.set("n", "<C-w>K", function() vim.cmd("resize +" .. math.floor(vim.o.lines * 0.05)) end, { desc = "Grow split up" })
vim.keymap.set("n", "<C-w>J", function() vim.cmd("resize -" .. math.floor(vim.o.lines * 0.05)) end, { desc = "Shrink split down" })

-- inlay hints
vim.keymap.set("n", "<leader>ih", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inlay hints" })

-- terminal
vim.keymap.set("n", "<leader>ts", "<cmd>split | terminal<cr>", { desc = "Terminal horizontal split" })
vim.keymap.set("n", "<leader>tv", "<cmd>vsplit | terminal<cr>", { desc = "Terminal vertical split" })
vim.keymap.set("n", "<leader>tt", "<cmd>tabnew | terminal<cr>", { desc = "Terminal new tab" })
