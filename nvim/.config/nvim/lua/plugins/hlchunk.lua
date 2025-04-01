-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "shellRaining/hlchunk.nvim",
  -- event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({
      chunk = {
        enable = true,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "└",
          right_arrow = ">",
        },
        style = "#00ffff",
      },

      indent = {
        enable = true,
        chars = {
          "│",
        },
        style = {
          vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
        },
      },

      line_num = {
        enable = true,
        style = "#d55fde",
      },

      blank = {
        enable = true,
        chars = {
          " ",
        },
        style = {
          { bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("cursorline")), "bg", "gui") },
          { bg = "",                                                                         fg = "" },
        },
      },
    })
  end,
}
