return {
	"David-Kunz/gen.nvim",
	dependencies = { "folke/which-key.nvim" },
	cmd = "Gen",
	config = function()
		require("gen").setup({
			-- model = "qwen2:1.5b", -- The default model to use.
			-- model = "mistral-nemo:latest",
			-- model = "phi3:latest",
			model = "llama3.1:latest",
			display_mode = "float", -- The display mode. Can be "float" or "split".
			-- show_prompt = true, -- Shows the Prompt submitted to Ollama.
			-- show_model = true, -- Displays which model you are using at the beginning of your chat session.
			quit_map = "q", -- The key to quit the Gen window.
		})
		require("gen").prompts["Spelling"] = {
			prompt = "Modify the following text to fix the spelling errors if any, just output the final text without additional quotes around it:\n$text",
			replace = true,
		}
	end,
	keys = {
		vim.keymap.set("v", "<leader>g", ":Gen Spelling<CR>"),
	},
}
