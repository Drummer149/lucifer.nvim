-- Key bindings for Trouble
--
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = "Open / Close Trouble"})
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)


return {
  -- Plugin Trouble, gives a pretty interface for diagnostics
  {
    "folke/trouble.nvim",
    -- Plugin web devicons, gives a nice Icon for the icons for trouble
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {

    }
  },
  {
    "goolord/alpha-nvim",
    config = function ()
      local dashboard = require("alpha.themes.dashboard");

      dashboard.section.header.val = {
        "██╗     ██╗   ██╗ ██████╗██╗███████╗███████╗██████╗ ",
        "██║     ██║   ██║██╔════╝██║██╔════╝██╔════╝██╔══██╗",
        "██║     ██║   ██║██║     ██║█████╗  █████╗  ██████╔╝",
        "██║     ██║   ██║██║     ██║██╔══╝  ██╔══╝  ██╔══██╗",
        "███████╗╚██████╔╝╚██████╗██║██║     ███████╗██║  ██║",
        "╚══════╝ ╚═════╝  ╚═════╝╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝",
        "                                                    ",
      }

      dashboard.section.buttons.val = {
        dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
        dashboard.button( "space + s + f", "  > Find file", ":<leader>sf"),
        dashboard.button( "space + ?", "  > Recent"   , ":Telescope oldfiles<CR>"),
        dashboard.button( "s","  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
        dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
      }

      require'alpha'.setup(dashboard.config)
    end
  }
}
