local function smear_cursor_color()
	return vim.g.colors_name == "rose-pine" and "#e0def4" or "#dc8a78"
end

local function smear_opts()
	return {
		cursor_color = smear_cursor_color(),
		cursor_color_insert_mode = smear_cursor_color(),
		particles_enabled = true,
		particle_spread = 1,
		particles_per_second = 100,
		particle_max_lifetime = 1500,
		particle_max_initial_velocity = 10,
		particle_random_velocity = 300,
		particle_damping = 0.1,
		particle_gravity = 50,
		time_interval = 7,
		cursor_color_insert_mode = smear_cursor_color(),
	}
end

return {
	{
		"sphamba/smear-cursor.nvim",
		opts = smear_opts,
		config = function(_, opts)
			local smear = require("smear_cursor")
			smear.setup(opts)

			local group = vim.api.nvim_create_augroup("SmearCursorThemeSync", { clear = true })
			vim.api.nvim_create_autocmd("ColorScheme", {
				group = group,
				callback = function()
					vim.schedule(function()
						smear.setup(smear_opts())
					end)
				end,
			})
		end,
	},
}
