return {
  ---@type LazySpec
  {
    "mikavilpas/yazi.nvim",
    version = "*", -- use the latest stable version
    event = "VeryLazy",
    dependencies = {
      { "nvim-lua/plenary.nvim", lazy = true },
    },
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        "<leader>-",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        -- Open in the current working directory
        "<leader>cw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
      {
        "<c-up>",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    },
    ---@type YaziConfig | {}
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      keymaps = {
        show_help = "<f1>",
      },
      -- the floating window scaling factor. 1 means 100%, 0.9 means 90%, etc.
      floating_window_scaling_factor = 0.8,

      -- the transparency of the yazi floating window (0-100). See :h winblend
      yazi_floating_window_winblend = 0,

      -- the type of border to use for the floating window. Can be many values,
      -- including 'none', 'rounded', 'single', 'double', 'shadow', etc. For
      -- more information, see :h nvim_open_win
      yazi_floating_window_style = "minimal",
      yazi_floating_window_border = "rounded",

      -- highlight buffers in the same directory as the hovered buffer
      highlight_hovered_buffers_in_same_directory = false,
    },
    -- 👇 if you use `open_for_directories=true`, this is recommended
    init = function()
      -- mark netrw as loaded so it's not loaded at all.
      --
      -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
      vim.g.loaded_netrwPlugin = 1
    end,
  },
}
