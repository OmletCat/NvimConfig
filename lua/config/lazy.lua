local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local uv = vim.uv or vim.loop

-- Auto-install lazy.nvim if not present
if not uv.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
  print('Done.')
end


vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	-- themes
	{'folke/tokyonight.nvim'},
	{"catppuccin/nvim", name = "catppuccin", priority = 1000 },
		
	-- lsp zero
	{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},

	-- mason
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	-- autopairs

	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	}

})



