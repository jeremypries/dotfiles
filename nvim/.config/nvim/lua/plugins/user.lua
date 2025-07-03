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
          {
            section = "terminal",
            pane = 2,
            cmd = "cbonsai -i -l -L 25 -M 4 -b 2",
            align = "center",
            -- padding = 5,
            width = 40,
          },

          {
            footer = [[]],
            padding = 2,      -- Optional padding above/below the footer
            align = "center", -- Optional alignment (left, center, right)
            hl = "comment",
          },

          {
            indent = 4,
            {
              icon = " ",
              title = "Recent Projects",
            },
            {
              section = "projects",
              opts = {
                limit = 8,
              },
              action = function(path)
                vim.cmd("Neotree reveal left dir=" .. path)
                vim.cmd("Neotree reveal left")
              end,
              indent = 6,
              padding = 1,
            },

            {
              icon = " ",
              title = "Recent Files",
            },
            {
              section = "recent_files",
              opts = {
                limit = 8,
              },
              indent = 6,
              padding = 1,
            },
          },
        },
      },
    },
  },
}
