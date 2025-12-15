return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = {
                enable = true,
            },
            -- Tree-sitter indent frequently overrides `autoindent`/`smartindent`.
            -- When parsers are missing or still downloading it forces column 0,
            -- so leave it disabled and fall back to the built-in indent engine.
            indent = { enable = false },
            autotag = { enable = true },
            ensure_installed = {
                "lua",
                "tsx",
                "typescript",
                "python",
                "go",
            },
            auto_install = false,
        })
    end,
}
