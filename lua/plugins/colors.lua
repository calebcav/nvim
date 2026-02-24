local function is_dark_mode()
    if vim.fn.has("mac") == 1 then
        return vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null"):match("Dark") ~= nil
    end

    return vim.o.background == "dark"
end

local function apply_system_theme()
    return is_dark_mode() and "vesper" or "catppuccin"
end

return {
    {
        "datsfilipe/vesper.nvim",
        name = "vesper",
        lazy = false,
        priority = 1000,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        opts = {
            flavour = "latte",
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)

            local theme = apply_system_theme()
            vim.cmd.colorscheme(theme)

            vim.api.nvim_create_autocmd("FocusGained", {
                group = vim.api.nvim_create_augroup("SystemThemeSync", { clear = true }),
                callback = function()
                    local next_theme = apply_system_theme()
                    if next_theme ~= theme then
                        vim.cmd.colorscheme(next_theme)
                        theme = next_theme
                    end
                end,
            })
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = function()
            return {
                theme = is_dark_mode() and "vesper" or "catppuccin",
            }
        end,
    },
}
