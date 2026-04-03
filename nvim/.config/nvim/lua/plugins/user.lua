-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

vim.g.stylua_config_path = "~/.config/nvim/stylua.toml"

-- Fat Cursor - goes with modes plugin
vim.opt.guicursor        = {
  "n-v:block-Cursor/lCursor",
  -- "i-c-ci-ve:block-TermCursor",
}

---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = {

      -- Turn off conflicting indent highlighting.  See hlchunk plugin
      indent = { enabled = false },

      dashboard = {
        enabled = true,
        sections = {
          -- { section = "header" },
          -- { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          -- { section = "startup" },
        },
      },
    },
  },
}
