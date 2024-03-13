--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
        require("nvim-autopairs").setup {}
        end
    }
}
