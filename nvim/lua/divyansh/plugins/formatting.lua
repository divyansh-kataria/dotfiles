return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",

		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					javascript = { "prettier" },
					json = { "prettier" },
					jsonc = { "prettier" },
					css = { "prettier" },
					html = { "prettier" },
					markdown = { "prettier" },
				},

				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},
}
