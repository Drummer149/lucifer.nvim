return {
  -- Oil Plugin, allows us to modify our filetree like the buffer
  'stevearc/oil.nvim',
  config = function()
    require("oil").setup()
  end,
}
