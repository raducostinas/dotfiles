vim.cmd [[packadd packer.nvim]]

-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
 vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
 })

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('nvim-lua/plenary.nvim')

    -- Theme
    use('gruvbox-community/gruvbox')

    -- File Explorer
    use('nvim-tree/nvim-tree.lua', {
      requires = 'kyazdani42/nvim-web-devicons',
      tag = 'nightly'
    })
    

    -- Telescope
    use('nvim-telescope/telescope.nvim')
    use('nvim-telescope/telescope-github.nvim')
    use({'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
    use('LinArcX/telescope-command-palette.nvim')
    use('nvim-telescope/telescope-file-browser.nvim')

    use({'nvim-lualine/lualine.nvim',
      requires = {
        'kyazdani42/nvim-web-devicons',
        opt = true
      }
    })
    use('kyazdani42/nvim-web-devicons')
    use('norcalli/nvim-colorizer.lua')

    -- Language Server Protocol (LSP)
    use('glepnir/lspsaga.nvim')
    use('neovim/nvim-lspconfig')
    use('mfussenegger/nvim-jdtls')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-vsnip')
    use('hrsh7th/vim-vsnip')
    use('onsails/lspkind-nvim')
    use('nvim-lua/lsp_extensions.nvim')
    use('saadparwaiz1/cmp_luasnip')

    use('simrat39/symbols-outline.nvim')
    use('lewis6991/gitsigns.nvim')
    use('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')
    use('neoclide/coc.nvim')
    use('editorconfig/editorconfig-vim')
    use('numToStr/Comment.nvim')
    use('alvan/vim-closetag')
    use('tpope/vim-surround')
    use('Yggdroot/indentLine')
    use('github/copilot.vim')

end)
