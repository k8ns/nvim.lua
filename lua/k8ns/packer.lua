-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    -- FILES and NAVIGATION

    -- file types
    use("nathom/filetype.nvim")

    use("christoomey/vim-tmux-navigator")


    -- file explorer
    use("nvim-tree/nvim-tree.lua")

    -- telescope
    use({ "nvim-lua/plenary.nvim" })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })        -- fuzzy finder

    -- use({"notomo/cmdbuf.nvim"})
    use({ 'nvim-lualine/lualine.nvim' })

    use 'mg979/vim-visual-multi'

    -- CODING

    -- REST

    use({
        "jellydn/hurl.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter"
        },
    })

    -- git
    use("lewis6991/gitsigns.nvim")

    -- commenting with gcc
    use("numToStr/Comment.nvim")

    -- syntax
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use({
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
    })

    -- lsp
    use('neovim/nvim-lspconfig')
    use("williamboman/nvim-lsp-installer")
    -- use { "fatih/vim-go" }

    -- completeon
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use("hrsh7th/cmp-cmdline")
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lua')

    -- snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    -- formatting
    use("jose-elias-alvarez/null-ls.nvim")

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    -- chatGPT
    use({
        "jackMort/ChatGPT.nvim",
        config = function() require("chatgpt").setup({}) end,
        requires = {
            "MunifTanjim/nui.nvim"
        }
    })

    -- database
    use("tpope/vim-dadbod")
    use("kristijanhusak/vim-dadbod-ui")
    use("kristijanhusak/vim-dadbod-completion")


    if packer_bootstrap then
        require("packer").sync()
    end
end)
