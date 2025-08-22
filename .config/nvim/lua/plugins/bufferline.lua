return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.options.always_show_bufferline = true
    opts.options.minimum_padding = 1
    opts.options.maximum_padding = 5
    opts.options.maximum_length = 15
    opts.options.separator_style = { "", "" } -- | "thick" | "thin" | { 'any', 'any' },
    opts.options.truncate_names = true
    opts.options.offsets = {
      {
        filetype = "neo-tree",
        text = "NeoTree",
        highlight = "Directory",
        separator = true, -- use a "true" to enable the default, or set your own character
      },
      {
        filetype = "NvimTree",
        text = "Explorer",
        highlight = "Directory",
        separator = true, -- use a "true" to enable the default, or set your own character
      },
    }
  end,
}
