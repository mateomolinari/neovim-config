local user_config = require('mmolinari.core.user')
local u = require('mmolinari.utils')

return {
  'MunifTanjim/prettier.nvim',
  cmd = { 'Prettier' },
  dependencies = {
		'neovim/nvim-lspconfig',
		'jose-elias-alvarez/null-ls.nvim'
	},
	config = function()
		require("prettier").setup({
			bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
			filetypes = {
				"css",
				"graphql",
				"html",
				"javascript",
				"javascriptreact",
				"json",
				"less",
				"markdown",
				"scss",
				"typescript",
				"typescriptreact",
				"yaml",
			},
			cli_options = {
				arrow_parens = "always",
				bracket_spacing = true,
				bracket_same_line = false,
				embedded_language_formatting = "auto",
				end_of_line = "lf",
				html_whitespace_sensitivity = "css",
				-- jsx_bracket_same_line = false,
				jsx_single_quote = false,
				print_width = 80,
				prose_wrap = "preserve",
				quote_props = "as-needed",
				semi = true,
				single_attribute_per_line = false,
				single_quote = false,
				tab_width = 2,
				trailing_comma = "es5",
				use_tabs = false,
				vue_indent_script_and_style = false,
				config_precedence = "prefer-file",
			},
		})

	end,
  enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'prettier'),
}
