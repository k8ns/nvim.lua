-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- recommended settings from nvim-tree documentation
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1


local HEIGHT_RATIO = 0.8 -- You can change this
local WIDTH_RATIO = 0.5  -- You can change this too


nvimtree.setup({
    -- change folder arrow icons
    renderer = {
        indent_width = 4,
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = true,
                git = true,
                modified = true,
            },
            glyphs = {
                folder = {
                    arrow_closed = "►", -- arrow when folder is closed
                    arrow_open = "▼", -- arrow when folder is open
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "÷",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "-",
                    ignored = "◌",
                },
            },
        },
    },
    disable_netrw = false,
    hijack_netrw = false,
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
    view = {
        relativenumber = true,
        float = {
            enable = true,
            open_win_config = function()
                local screen_w = vim.opt.columns:get()
                local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                local window_w = screen_w * WIDTH_RATIO
                local window_h = screen_h * HEIGHT_RATIO
                local window_w_int = math.floor(window_w)
                local window_h_int = math.floor(window_h)
                local center_x = (screen_w - window_w) / 2
                local center_y = ((vim.opt.lines:get() - window_h) / 2)
                    - vim.opt.cmdheight:get()
                return {
                    border = "rounded",
                    relative = "editor",
                    row = center_y,
                    col = center_x,
                    width = window_w_int,
                    height = window_h_int,
                }
            end,
        },
        width = function()
            return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
        end,
    },
    -- disable window_picker for
    -- explorer to work well with
    -- window splits
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    git = {
        ignore = false,
    },
})

vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<Enter>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFindFile<Enter>")
