return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup {
				-- Configuration options go here
				-- For example:
				signs = {
					add = { text = "│" },
					change = { text = "│" },
					delete = { text = "✗" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				on_attach = function(bufnr)
					-- Keymaps for Gitsigns
					local gs = package.loaded.gitsigns

					local function map(mode, lhs, rhs, opts)
						vim.keymap.set(mode, lhs, rhs,
							{ buffer = bufnr, silent = true, noremap = true, desc = opts.desc })
					end

					-- Navigation
					map("n", "]h", function() gs.next_hunk() end, { desc = "Next Hunk" })
					map("n", "[h", function() gs.prev_hunk() end, { desc = "Previous Hunk" })

					-- Actions
					map("n", "<leader>hs", gs.stage_hunk, { desc = "Stage Hunk" })
					map("n", "<leader>hr", gs.reset_hunk, { desc = "Reset Hunk" })
					map("v", "<leader>hs", function() gs.stage_hunk { vim.fn.line("."), vim.fn.line("v") } end,
						{ desc = "Stage Hunk (Visual)" })
					map("v", "<leader>hr", function() gs.reset_hunk { vim.fn.line("."), vim.fn.line("v") } end,
						{ desc = "Reset Hunk (Visual)" })
					map("n", "<leader>hS", gs.stage_buffer, { desc = "Stage Buffer" })
					map("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo Stage Hunk" })
					map("n", "<leader>hR", gs.reset_buffer, { desc = "Reset Buffer" })
					map("n", "<leader>hp", function() gs.preview_hunk() end, { desc = "Preview Hunk" })
					map("n", "<leader>hb", function() gs.blame_line() end, { desc = "Blame Line" })
					map("n", "<leader>td", gs.toggle_deleted, { desc = "Toggle Deleted" })
				end,
			}
		end,
	},
}
