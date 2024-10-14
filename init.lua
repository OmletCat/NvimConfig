require("config.lazy")
require("config.lsp_zero_config")
require("config.nvim_tree_config")

-- my stuff
vim.cmd("set relativenumber")
vim.cmd.colorscheme("catppuccin")
vim.opt.termguicolors = true

--vim.cmd.colorscheme('tokyonight')


vim.g.mapleader = " "  -- You can set this to your preferred key



-- remapping


-- nvim tree
local nvim_tree = require("nvim-tree")
vim.api.nvim_set_keymap('n', '<leader>o', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
