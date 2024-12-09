require("lualine").setup{
	options = {
		icons_enabled = true,
		theme = "onedark",
		component_separators = "|",
		section_separators = "",
	},
    sections = {
        lualine_c = {
            'filesize',
            {
                "filename",
                path = 1
            }
        },
        lualine_x = {'searchcount', 'encoding', 'fileformat', 'filetype'},
    },
    inactive_sections = {
        lualine_c = {
            'filesize',
            {
                "filename",
                path = 1
            }
        },
        lualine_x = {'searchcount', 'encoding', 'fileformat', 'filetype'},
    }
}
