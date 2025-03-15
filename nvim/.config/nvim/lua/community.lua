--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.utility/noice-nvim" },
	{ import = "astrocommunity.completion/cmp-cmdline" },
	{ import = "astrocommunity.recipes.heirline-mode-text-statusline" },
	-- { import = "astrocommunity.diagnostics/trouble-nvim" },
	{ import = "astrocommunity.diagnostics/error-lens-nvim" },
	-- import/override with your plugins folder
	--
	{
		"noice.nvim",
		opts = function(_, opts)
			opts.lsp.signature = { enabled = false }

			opts.presets = {
				bottom_search = true,
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
				command_palette = {
					views = {
						cmdline_popup = {
							position = {
								row = "50%",
								col = "50%",
							},
							size = {
								min_width = 60,
								width = "auto",
								height = "auto",
							},
						},
						cmdline_popupmenu = {
							position = {
								row = "67%",
								col = "50%",
							},
						},
					},
				},
			}

			return opts
		end,
	},
}
