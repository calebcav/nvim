return {
    {
        "tpope/vim-fugitive",
    },
    { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
    { "wakatime/vim-wakatime", lazy = false },
    {
        "sphamba/smear-cursor.nvim",
        opts = {
            cursor_color = "#FFFFFF",
            -- stiffness = 0.5,
            -- trailing_stiffness = 0.5,
            -- matrix_pixel_threshold = 0.5,
            particles_enabled = true, -- Enable particles
            particle_spread = 1,
            particles_per_second = 100,
            particle_max_lifetime = 1500, -- Lifetime in ms
            particle_max_initial_velocity = 10,
            particle_random_velocity = 300,
            particle_damping = 0.1, -- Controls how fast particles stop
            particle_gravity = 50, -- Controls downward acceleration
            -- Performance
            time_interval = 7,
        },
    },
    { "dmmulroy/ts-error-translator.nvim" },
}
