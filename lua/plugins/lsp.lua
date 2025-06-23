-- don't even start pyright
return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pyright = {
                    mason = false,
                    autostart = false,
                },
            },
        },
    },
}
