return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	config = function()
		-- Set the mkdp_theme global variable to 'dark'
		-- vim.g.mkdp_theme = "dark"
		vim.g.mkdp_preview_options = {
			disable_filename = 1,
		}
	end,
}
