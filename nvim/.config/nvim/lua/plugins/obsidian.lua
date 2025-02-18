-- Also, Obsidian search requires ripgrep to be installed
-- brew install ripgrep

return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "blah",
        path = "/Users/jpries/Library/Mobile Documents/iCloud~md~obsidian/Documents/Blah",
      },
    },
    daily_notes = {
      folder = "01.  Daily",
      template = "Templates/daily.md",
    },
    templates = {
      folder = "Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
    -- see below for full list of options 👇
  },
}
