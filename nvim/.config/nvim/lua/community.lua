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
  -- import/override with your plugins folder
  --
  {
    "noice.nvim",
    opts = function(_, opts)
      opts.lsp.signature = { enabled = false }

      opts.presets = {
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
