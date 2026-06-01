vim.filetype.add({
    extension = {
        tfstate      = "json",
        tf           = "terraform",
        ddl          = "sql",
        sql          = "sql",
        sh           = "bash",
        http         = "hurl",
        html         = "html",
        xml          = "xml",
        mobileconfig = "xml",
        conf         = "cfg",
        phtml        = "phtml",
        swift        = "swift",
    },

    filename = {
        -- literal filename matches
        -- MyBackupFile = "lua",
    },

    pattern = {
        [".*%.up%.sql"]   = "sql",
        [".*%.down%.sql"] = "sql",
    },
})
