local lspconfig = require("lspconfig")
local caps = vim.lsp.protocol.make_client_capabilities()
caps = require("cmp_nvim_lsp").default_capabilities(caps)
local no_format = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
end

-- Capabilities
caps.textDocument.completion.completionItem.snippetSupport = true

-- Python
lspconfig.pyright.setup({
    capabilities = caps,
    on_attach = no_format
})

-- PHP
lspconfig.phpactor.setup({ capabilities = caps })

-- JavaScript/Typescript
lspconfig.tsserver.setup({
    capabilities = caps,
    on_attach = no_format
})

-- Rust
lspconfig.rust_analyzer.setup({
    capabilities = caps,
    on_attach = no_format
})

-- Emmet
lspconfig.emmet_ls.setup({
    capabilities = caps,
    filetypes = {
        "css",
        "html",
        "javascriptreact",
        "less",
        "sass",
        "scss",
        "typescriptreact",
    },
})

lspconfig.volar.setup({
    filetypes = {'vue'}
})

--  Go 
lspconfig.gopls.setup({})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = {"*.go"},
  callback = function ()
    vim.lsp.buf.format()
  end
})

-- Bash
lspconfig.bashls.setup({})

-- Lua
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
})


-- dott graphviz
lspconfig.dotls.setup{}


-- Terraform
-- lspconfig.terraformls.setup({
--     filetypes = {
--         "tf", "terraform", "hcl", "terraform-vars",
--     }
-- })

lspconfig.terraformls.setup({
  capabilities = caps,
    filetypes = {
        "tf", "terraform", "hcl", "terraform_vars",
    }
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- refactring
--
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)

        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        vim.keymap.set("n", "<leader>ds", ":lua vim.lsp.buf.document_symbol()<CR>")
        vim.keymap.set("n", "<leader>im", ":lua vim.lsp.buf.implementation()<CR>")
        vim.keymap.set("n", "<leader>ic", ":lua vim.lsp.buf.incoming_calls()<CR>")  -- Show Info

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})
