return {
  "roobert/tailwindcss-colorizer-cmp.nvim",
  config = function()
    require("cmp").config.formatting = {
      format = require("tailwindcss-colorizer-cmp").formatter
    }
  end
}

