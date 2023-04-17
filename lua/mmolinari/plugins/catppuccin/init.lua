local user_config = require('mmolinari.core.user')

return {
  { -- color scheme
    'catppuccin/nvim',
    lazy = false,
    config = function()
      require('catppuccin').setup({
				flavour = "macchiato", -- latte, frappe, macchiato, mocha
				background = { -- :h background
						light = "latte",
						dark = "macchiato",
				},
				transparent_background = false,
				show_end_of_buffer = false, -- show the '~' characters after the end of buffers
				term_colors = false,
				dim_inactive = {
						enabled = false,
						shade = "dark",
						percentage = 0.15,
				},
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				styles = {
						comments = { "italic" },
						conditionals = { "italic" },
						loops = {},
						functions = {},
						keywords = {},
						strings = {},
						variables = {},
						numbers = {},
						booleans = {},
						properties = {},
						types = {},
						operators = {},
				},
				color_overrides = {},
				custom_highlights = {},
				integrations = {
						cmp = true,
						gitsigns = true,
						nvimtree = true,
						telescope = true,
						notify = false,
						mini = false,
                        neotree = true,
                        which_key= true,
				},
		})
      vim.cmd('color catppuccin')
    end,
    enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'catppuccin'),
  },
}
