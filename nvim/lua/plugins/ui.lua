return {
  {
    "rcarriga/nvim-notify", -- оставляем
    opts = {
      timeout = 5000,
      background_colour = "#000000",
      render = "wrapped-compact",
    },
  },

  {
    "folke/noice.nvim",
    enabled = true, -- включаем обратно
    opts = {
      cmdline = {
        view = "cmdline", -- вместо всплывающего окна используем обычную командную строку
      },
      messages = {
        view = "mini", -- компактные сообщения
      },
      popupmenu = {
        enabled = false, -- отключаем меню
      },
      -- другие настройки по минимуму
    },
    dependencies = {
      "rcarriga/nvim-notify",
    },
  },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
        indicator = { icon = "", style = "none" }, -- скрыть индикатор
        separator_style = { "", "" }, -- убрать разделители
      },
    },
  },
  -- filename
  {
    "b0o/incline.nvim",
    dependencies = {},
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local helpers = require("incline.helpers")
      require("incline").setup({
        window = {
          padding = 0,
          margin = { horizontal = 0 },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
          local modified = vim.bo[props.buf].modified
          local buffer = {
            ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
            " ",
            { filename, gui = modified and "bold,italic" or "bold" },
            " ",
            guibg = "#363944",
          }
          return buffer
        end,
      })
    end,
  },

  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
    keys = {},
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = false,
  },
}
