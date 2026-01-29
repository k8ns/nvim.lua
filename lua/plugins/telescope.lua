return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },

  -- Lazy-load on keypress
  keys = {
    { "<leader>?", function() require("telescope.builtin").oldfiles() end,
      desc = "[?] Find recently opened files" },

    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          no_ignore = true,
        })
      end,
      desc = "[S]earch [F]iles",
    },

    {
      "<leader>fa",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find(
          require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = false,
          })
        )
      end,
      desc = "[/] Fuzzily search in current buffer",
    },

    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep({
          hidden = true,
          no_ignore = true,
          no_ignore_parent = true,
        })
      end,
      desc = "[S]earch [G]rep",
    },

    { "<leader>fb", function() require("telescope.builtin").buffers() end,
      desc = "[ ] Find existing buffers" },

    { "<leader>fw", function() require("telescope.builtin").grep_string() end,
      desc = "[S]earch current [W]ord" },

    { "<leader>fr", function() require("telescope.builtin").resume() end,
      desc = "[R]esume" },

    { "<leader>fi", function() require("telescope.builtin").lsp_implementations() end,
      desc = "LSP [I]mplementations" },

    { "<leader>fc", function() require("telescope.builtin").lsp_incoming_calls() end,
      desc = "LSP Incoming [C]alls" },

    { "<leader>fo", function() require("telescope.builtin").lsp_outgoing_calls() end,
      desc = "LSP [O]utgoing calls" },

    { "<leader>fe", function() require("telescope.builtin").diagnostics() end,
      desc = "[S]earch [D]iagnostics" },

    { "<leader>fd", function() require("telescope.builtin").lsp_document_symbols() end,
      desc = "Document Symbols" },

    { "<leader>fs", function() require("telescope.builtin").git_status() end,
      desc = "Git status" },

    { "<leader>fh", function() require("telescope.builtin").git_commits() end,
      desc = "Git commits" },

    { "<leader>fv", function() require("telescope.builtin").git_branches() end,
      desc = "Git branches" },

    { "<leader>fu", function() require("telescope.builtin").lsp_references() end,
      desc = "References" },
  },

  config = function()
    local telescope = require("telescope")
    -- local actions = require("telescope.actions")

    telescope.setup({
      -- defaults = {
      --   mappings = {
      --     i = {
      --       ["<C-k>"] = actions.move_selection_previous,
      --       ["<C-j>"] = actions.move_selection_next,
      --       ["<C-q>"] = actions.send_selected_to_qflist
      --         + actions.open_qflist,
      --     },
      --   },
      -- },
    })

    telescope.load_extension("fzf")
  end,
}
