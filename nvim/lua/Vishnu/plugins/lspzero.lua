return {
	{'folke/tokyonight.nvim'},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		config=function()
			local lsp_zero = require('lsp-zero')

			-- lsp_attach is where you enable features that only work
			-- if there is a language server active in the file
			local lsp_attach = function(client, bufnr)
				local opts = {buffer = bufnr}

				vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
				vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
				vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
				vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
				vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
				vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
				vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
				vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
				vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
				vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
			end

			lsp_zero.extend_lspconfig({
				sign_text = true,
				lsp_attach = lsp_attach,
				capabilities = require('cmp_nvim_lsp').default_capabilities(),
			})
			require('mason').setup({})
			require('mason-lspconfig').setup({
				handlers = {
					function(server_name)
						require('lspconfig')[server_name].setup({})
					end,
				}
			})

			-- Setting up nvim-cmp with LuaSnip
			local cmp = require('cmp')
			local lsp_zero = require('lsp-zero')
			local cmp_action = lsp_zero.cmp_action()
			local luasnip = require('luasnip')

			cmp.setup({
				sources = {
					{name = 'nvim_lsp'},
					{name = 'luasnip'},  -- Add LuaSnip as a source
				},
				mapping = cmp.mapping.preset.insert({
					['<CR>'] = cmp.mapping.confirm({select = false}),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-f>'] = cmp_action.vim_snippet_jump_forward(),
					['<C-b>'] = cmp_action.vim_snippet_jump_backward(),
					['<C-u>'] = cmp.mapping.scroll_docs(-4),
					['<C-d>'] = cmp.mapping.scroll_docs(4),
				}),
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)  -- Use LuaSnip to expand snippets
					end,
				},
			})
		end
	},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip',
		config=function()
			vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true, noremap = true})
			vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true, noremap = true})
			vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true, noremap = true})
			vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true, noremap = true})
			function _G.tab_complete()
				if require("luasnip").expand_or_jumpable() then
					return t("<cmd>lua require'luasnip'.jump(1)<CR>")
				else
					return t("<Tab>")  -- Insert a regular tab if there's no snippet jump available
				end
			end

			function _G.s_tab_complete()
				if require("luasnip").jumpable(-1) then
					return t("<cmd>lua require'luasnip'.jump(-1)<CR>")
				else
					return t("<S-Tab>")
				end
			end

			-- Utility function to help with terminal codes
			function t(str)
				return vim.api.nvim_replace_termcodes(str, true, true, true)
			end


		end
	},  -- Add LuaSnip plugin
	{'saadparwaiz1/cmp_luasnip'},  -- Add cmp_luasnip for nvim-cmp to LuaSnip integration
	{'mfussenegger/nvim-dap'},
	{'mfussenegger/nvim-lint'},
	{'mhartington/formatter.nvim'}
}

