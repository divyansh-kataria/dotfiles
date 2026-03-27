local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- 🔥 Extra powerful ones
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
keymap.set("n", "<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Commands" })
keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })

keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open file explorer" })

-- LSP keymaps
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })

keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })

keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

keymap.set("n", "<leader>ee", vim.diagnostic.open_float, { desc = "Show diagnostics" })
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

