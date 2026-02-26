return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      -- Здесь вы можете добавить свои настройки
      -- Например, отключить открытие при создании файла:
      -- disable_netrw = true,
      -- hijack_netrw = true,
      -- open_on_setup = false,
    })
  end,
}
