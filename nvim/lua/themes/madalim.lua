local M = {}

M.setup = function()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.o.background = "dark"
  vim.g.colors_name = "madalim"

  local colors = {
    bg = "#101010",
    fg = "#eeffff",
    comment = "#6c7088",
    red = "#f38ba8",
    green = "#a6e3a1",
    yellow = "#f9e2af",
    blue = "#89b4fa",
    purple = "#f5c2e7",
    cyan = "#89b4fa",
  }

  -- Normal text
  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg, blend = 20 })
  vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
  vim.api.nvim_set_hl(0, "Error", { fg = colors.red, bold = true })
  vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "Keyword", { fg = colors.purple, bold = true })

  -- Change statusline background
  vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = "#2e2e2e", bold = true })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.comment, bg = "#2e2e2e" })

  -- Border colors
  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#6c7088", bg = "#101010" })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#101010" })

  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#101010" })
  vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = "#6c7088" })

  vim.api.nvim_set_hl(0, "StatusLineSeparator", { fg = "#6c7088", bg = "#101010" })

  -- Floating window background
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })

  -- Floating window border (used by NvimTree float)
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#6c7088", bg = "#101010" })

  vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = "#6c7088", bg = "#101010" })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = "#6c7088", bg = "#101010" })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#6c7088", bg = "#101010" })
end

return M
