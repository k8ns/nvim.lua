require("lualine").setup{
	options = {
		icons_enabled = false,
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
    }
}
