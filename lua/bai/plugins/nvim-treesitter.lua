return {
   "nvim-treesitter/nvim-treesitter",
   event = { "BufReadPre", "BufNewFile" },
   build = ":TSUpdate",
   dependencies = {
      "windwp/nvim-ts-autotag",},

   config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
         ensure_installed = { "c", "lua", "markdown" },

         sync_install = true,
         auto_install = true,
         
         highlight = {
            enable = true, },

rainbow = {
                enable = true,
                disable = { "html" },
                extended_mode = false,
                max_file_lines = nil,            },

      })
   end,
}
