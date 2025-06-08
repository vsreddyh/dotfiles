require("Vishnu.config.lazy")
require("Vishnu.remap")
require("Vishnu.set")
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/Vishnu/snippets/" })

vim.diagnostic.config({
	virtual_text = {
		prefix = "", -- can be '●', '■', '▎', '→', '·' or '' for no prefix
		spacing = 2,
		-- You can also customize the highlight group here if you want
	},
	signs = true, -- show signs in the sign column
	underline = true, -- underline problematic code
	update_in_insert = false, -- do not update diagnostics while typing
	severity_sort = true,
})
