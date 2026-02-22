return {
  "sainnhe/sonokai",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.sonokai_transparent_background = "1"
    vim.g.sonokai_enable_italic = true
    vim.g.sonokai_style = "andromeda"
    vim.cmd.colorscheme("sonokai")
  end,
}

-- return {
--   "folke/tokyonight.nvim",
--   opts = {
--     transparent = true,
--     styles = {
--       sidebars = "transparent",
--       floats = "transparent",
--     },
--   },
-- }
