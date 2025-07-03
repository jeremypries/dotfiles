---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.markdown-and-latex.peek-nvim" },

  -- Language packs
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.full-dadbod" },
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

  { import = "astrocommunity.project.projectmgr-nvim" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  { import = "astrocommunity.scrolling.cinnamon-nvim" },
  -- { import = "astrocommunity.diagnostics/trouble-nvim" },
  -- { import = "astrocommunity.diagnostics/error-lens-nvim" },
}
