local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


local status, lazy = pcall(require, "lazy")
if not status then
    return
end

return lazy.setup({

    -- FILES and NAVIGATION
    'nvim-tree/nvim-web-devicons',

    -- file types
    "nathom/filetype.nvim",

    "christoomey/vim-tmux-navigator",


    -- file explorer
    "nvim-tree/nvim-tree.lua",

    -- telescope
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },   -- dependency for better sorting performance
    { "nvim-telescope/telescope.nvim",            branch = "0.1.x" }, -- fuzzy finder

    -- use({"notomo/cmdbuf.nvim"})
    { 'nvim-lualine/lualine.nvim' },

    -- CODING

    -- REST
    {
        "jellydn/hurl.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter"
        },
        ft = "http",
    },

    -- git
    "lewis6991/gitsigns.nvim",

    -- commenting with gcc
    "numToStr/Comment.nvim",

    -- syntax
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    { 'nvim-treesitter/playground'},

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = "nvim-treesitter/nvim-treesitter",
    },

    {'mbbill/undotree'},

    -- lsp
    'neovim/nvim-lspconfig',
    "williamboman/nvim-lsp-installer",
    -- use { "fatih/vim-go" }

    -- completeon
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    "hrsh7th/cmp-cmdline",
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lua',

    -- snippets
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",

    -- formatting
    "jose-elias-alvarez/null-ls.nvim",

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { { "nvim-lua/plenary.nvim" } }
    },

    -- color
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- ChatGPT
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        -- config = function()
        --     require("chatgpt").setup()
        -- end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },

    -- debug
    'mfussenegger/nvim-dap',
    'leoluz/nvim-dap-go',
    'theHamsta/nvim-dap-virtual-text',
    { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },

    -- database
    "tpope/vim-dadbod",
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",

})
