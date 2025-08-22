local colors = require("config.colors")

local default_fg = colors.blue
local default_bg = colors.base

local border_hl = { bg = default_bg, fg = colors.line }
local default_hl = { bg = default_bg, fg = default_fg }
local input_hl = { bg = default_bg, fg = colors.sky }

-- NOTE: Blink cmp
-- vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = colors.dark_blue })
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", border_hl)
vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", border_hl)
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", border_hl)
vim.api.nvim_set_hl(0, "BlinkCmpDocCursorLine", border_hl)
vim.api.nvim_set_hl(0, "BlinkCmpDocSeparator", border_hl)
vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = colors.base })

-- NOTE: Noice
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", default_hl)

-- NOTE: Float
vim.api.nvim_set_hl(0, "FloatBorder", border_hl)
vim.api.nvim_set_hl(0, "FloatTitle", default_hl)

-- NOTE: Explorer
vim.api.nvim_set_hl(0, "SnacksInputBorder", border_hl)
vim.api.nvim_set_hl(0, "SnacksInputTitle", input_hl)
vim.api.nvim_set_hl(0, "SnacksInputIcon", input_hl)

-- NOTE: Notifier
vim.api.nvim_set_hl(0, "SnacksNotifierBorderInfo", border_hl)
vim.api.nvim_set_hl(0, "SnacksNotifierBorderDebug", border_hl)
vim.api.nvim_set_hl(0, "SnacksNotifierBorderWarn", border_hl)
vim.api.nvim_set_hl(0, "SnacksNotifierBorderError", border_hl)
vim.api.nvim_set_hl(0, "SnacksNotifierBorderTrace", border_hl)

-- NOTE: NeoTree
vim.api.nvim_set_hl(0, "NeoTreeTitleBar", default_hl)
