-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",

	{ import = "astrocommunity.colorscheme.github-nvim-theme" },
	{ import = "astrocommunity.completion.cmp-cmdline" },
	{ import = "astrocommunity.git.blame-nvim" },
	{ import = "astrocommunity.git.neogit" },
	{ import = "astrocommunity.markdown-and-latex.peek-nvim" },

	-- Language packs
	{ import = "astrocommunity.pack.ansible" },
	{ import = "astrocommunity.pack.bash" },
	{ import = "astrocommunity.pack.docker" },
	{ import = "astrocommunity.pack.fish" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.helm" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.markdown" },
	{ import = "astrocommunity.pack.ps1" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.rego" },
	-- GoogleSQL is freaking this pack out
	-- { import = "astrocommunity.pack.sql" },
	{ import = "astrocommunity.pack.terraform" },
	{ import = "astrocommunity.pack.yaml" },

	{ import = "astrocommunity.recipes.vscode-icons" },
}
