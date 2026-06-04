local map = vim.keymap.set

vim.g.mapleader = " "

-- Basic
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Write file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })

map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
map("n", "<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Commands" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })

-- File explorer
map("n", "<leader>e", "<cmd>Oil<cr>", { desc = "File explorer" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Declaration" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Implementation" })

-- Telescope UI for references is nicer than quickfix
map("n", "gr", "<cmd>Telescope lsp_references<cr>", {
	desc = "References",
})

map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- Diagnostics
map("n", "<leader>ee", vim.diagnostic.open_float, {
	desc = "Line diagnostics",
})

map("n", "[d", function()
	vim.diagnostic.jump({ count = -1 })
end, {
	desc = "Previous diagnostic",
})

map("n", "]d", function()
	vim.diagnostic.jump({ count = 1 })
end, {
	desc = "Next diagnostic",
})

map("n", "<leader>sd", vim.diagnostic.setloclist, {
	desc = "Diagnostics list",
})

-- Formatting
map("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, {
	desc = "Format buffer",
})
