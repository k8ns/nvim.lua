return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",

        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            -- add autotag plugin only if you actually use it
            "windwp/nvim-ts-autotag",
        },

        opts = {
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "css",
                "elixir",
                "fish",
                "graphql",
                "html",
                "javascript",
                "json",
                "lua",
                "php",
                "hurl",
                "python",
                "regex",
                "ruby",
                "rust",
                "scss",
                "sql",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "yaml",
                "terraform",
                "go",
                "http",
                "diff",
                "markdown",
                "markdown_inline",
            },

            highlight = {
                enable = true,
                -- additional_vim_regex_highlighting = true,
            },

            indent = {
                enable = true,
            },

            incremental_selection = {
                enable = true,
            },

            injections = {
                enable = true,
            },

            textobjects = {
                select = {
                    enable = true,
                    lookahead = true, -- jump forward automatically

                    keymaps = {
                        -- functions & methods
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",

                        -- structs & interfaces
                        ["as"] = "@type.outer",
                        ["is"] = "@type.inner",

                        ["ai"] = "@interface.outer",
                        ["ii"] = "@interface.inner",

                        -- blocks (if / for / switch)
                        ["ab"] = "@block.outer",
                        ["ib"] = "@block.inner",

                        -- parameters
                        ["ap"] = "@parameter.outer",
                        ["ip"] = "@parameter.inner",

                        -- comments (huge in Go)
                        ["ac"] = "@comment.outer",
                        ["ic"] = "@comment.inner",
                    },
                },

                move = {
                    enable = true,
                    set_jumps = true,

                    goto_next_start = {
                        ["]f"] = "@function.outer",
                        ["]t"] = "@type.outer",
                    },

                    goto_previous_start = {
                        ["[f"] = "@function.outer",
                        ["[t"] = "@type.outer",
                    },
                },

                swap = {
                    enable = true,

                    swap_next = {
                        ["<leader>sp"] = "@parameter.inner",
                    },

                    swap_previous = {
                        ["<leader>sP"] = "@parameter.inner",
                    },
                },
            },

            autotag = {
                enable = true,
                filetypes = {
                    "html",
                    "javascript",
                    "javascriptreact",
                    "svelte",
                    "typescript",
                    "typescriptreact",
                    "vue",
                    "xml",
                },
            },

            modules = {},
            ignore_install = { "javascript" },
            auto_install = true,
            sync_install = false,
        },

        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}
