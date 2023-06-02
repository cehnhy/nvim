return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    -- https://github.com/projekt0n/github-nvim-theme
    use({
        'projekt0n/github-nvim-theme',
        config = function()
            require('config.github-theme')
        end
    })

    -- File Explorer
    -- https://github.com/nvim-tree/nvim-tree.lua
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('config.nvim-tree')
        end
    }

    -- Tabline
    -- https://github.com/akinsho/bufferline.nvim
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('config.bufferline')
        end
    }

    -- Statusline
    -- https://github.com/nvim-lualine/lualine.nvim
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
            opt = true
        },
        config = function()
            require('config.lualine')
        end
    }

    -- GO
    -- https://github.com/fatih/vim-go
    use { 'fatih/vim-go' }
end)
