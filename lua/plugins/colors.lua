local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
    -- {
    --     "folke/tokyonight.nvim",
    --     config = function()
    --         vim.cmd.colorscheme("tokyonight")
    --         -- enable_transparency()
    --     end,
    -- },
    -- lua/plugins/rose-pine.lua
    {
        "neanias/everforest-nvim",
        name = "everforest-light-med",
        config = function()
            require("everforest").setup({
                background = "medium",
            })
            vim.o.background = "light"
            vim.cmd.colorscheme("everforest")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { theme = "everforest" },
    },
}
