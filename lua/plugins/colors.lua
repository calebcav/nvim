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
        "rose-pine/neovim",
        name = "rose-pine-moon",
        config = function()
            vim.cmd.colorscheme("rose-pine-moon")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { theme = "rose-pine-moon" },
    },
}
