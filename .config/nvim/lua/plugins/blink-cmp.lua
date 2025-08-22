return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  ---@param opts blink.cmp.Config | { sources: { compat: string[] } }
  opts = function(_, opts)
    opts.completion.documentation.auto_show = false
    opts.completion.documentation.window = { border = "rounded" }
    opts.completion.menu.border = "rounded"
    opts.completion.ghost_text = { enabled = false }
    opts.keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    }
  end,
}
