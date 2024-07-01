-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- configure telescope
telescope.setup({
  -- configure custom mappings
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
    },
  },
})

telescope.load_extension("fzf")

-- telescope
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>fs', function()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>fa', function() require('telescope.builtin').find_files({ hidden = true, no_ignore = true }) end, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep({ hidden = true, no_ignore = true }) end, { desc = '[S]earch [G]rep' })
-- vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').resume, { desc = '[R]esume' })
vim.keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_implementations, { desc = 'LSP [I]mplementations' })
vim.keymap.set('n', '<leader>fc', require('telescope.builtin').lsp_incoming_calls, { desc = 'LSP Incoming [C]alls' })
vim.keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_outgoing_calls, { desc = 'LSP [O]utgoing calls' })
vim.keymap.set('n', '<leader>fe', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').lsp_document_symbols, { desc = 'Document Symbols' })
vim.keymap.set('n', '<leader>fu', require('telescope.builtin').lsp_references, { desc = 'Document Symbols' })
