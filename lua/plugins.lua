local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
    {
        -- Colorscheme
        -- https://github.com/projekt0n/github-nvim-theme
        'projekt0n/github-nvim-theme',
        version = "*",
        config = function()
            require('config.github-theme')
        end,
    },
    {
        -- File Explorer
        -- https://github.com/nvim-tree/nvim-tree.lua
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("config.nvim-tree")
        end,
    },
    {
        -- Tabline
        -- https://github.com/akinsho/bufferline.nvim
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('config.bufferline')
        end,
    },
    {
        -- Statusline
        -- https://github.com/nvim-lualine/lualine.nvim
        'nvim-lualine/lualine.nvim',
        version = "*",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('config.lualine')
        end,
    },
    {
        -- Snytax Highlight
        -- https://github.com/nvim-treesitter/nvim-treesitter
        'nvim-treesitter/nvim-treesitter',
        version = "*",
        build = ":TSUpdate",
        config = function()
            require('config.nvim-treesitter')
        end,
    },
    {
        -- LSP
        -- https://github.com/williamboman/mason.nvim
        "williamboman/mason.nvim",
        version = "*",
        build = ":MasonUpdate",
        config = function()
            require('config.mason')
        end,
    },
    {
        -- GO
        -- https://github.com/fatih/vim-go
        'fatih/vim-go',
        version = "*",
    }
}, {})
