return {
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	'hrsh7th/cmp-nvim-lsp',
	config = function()
		local cmp = require('cmp')
		cmp.setup {

			sources = {
				{ name = 'nvim_lsp' },
			},
			mapping = cmp.mapping.preset.insert({
				['<CR>'] = cmp.mapping.confirm({ select = false }),
			}),
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
		}
	end
}
