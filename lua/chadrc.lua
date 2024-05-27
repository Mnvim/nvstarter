-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",
  -- cmp = {
  --  style = "atom",
  --},

  -- statusline = {
  --  theme = "vscode_colored",
  --  separator_style = "block",
  --  order = {
  --    "mode",
  --    "tint",
  --    "separator",
  --    "file",
  --    "%=",
  --    "git",
  --    "%=",
  --    "lsp_msg",
  --    "%=",
  --    "diagnostics",
  --    "lsp",
  --    "separator",
      -- "force",
      -- "file",
  --    "cursor",
  --    "cwd",
  --  },
  --  modules = {
  --    separator = function()
  --      return " "
  --    end,
      -- Force grey on modules that absorb neighbour colour
      -- (because they don't have a highlight set)
  --    tint = function()
  --      return "%#StText#"
  --    end,
  --    force = function()
  --      return "%#@comment#%"
  --    end,
  --  },
  --},

  -- tabufline = {
  --  lazyload = false,
  --},

  -- cheatsheet = { theme = "simple" },
  --
  -- M.plugins == "custom.plugins",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

return M
