-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "mateo",
  -- cmp = {
  --  style = "atom",
  --},

  statusline = {
    theme = "vscode_colored",
    separator_style = "block",
  },

   tabufline = {
    lazyload = false,
  },

  -- cheatsheet = { theme = "simple" },

  M.plugins == "custom.plugins",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

}

return M
