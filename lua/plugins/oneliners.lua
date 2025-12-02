return {
    {
        "tpope/vim-fugitive",
    },
    { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
    { "wakatime/vim-wakatime", lazy = false },
    {
        "sphamba/smear-cursor.nvim",
        opts = {
            cursor_color = "#E69875",
            stiffness = 0.5,
            trailing_stiffness = 0.5,
            matrix_pixel_threshold = 0.5,
        },
    },
    { "dmmulroy/ts-error-translator.nvim" },
}
