--lualine
require('lualine').setup{
   winbar = {
    lualine_a = { require'doing.api'.status },

}

--doing
require('doing').setup {
      -- default options
      message_timeout = 2000,
      winbar = { 
        enabled = true,
        -- ignores buffers that match filetype
        ignored_buffers = { 'NvimTree' }
      },

      doing_prefix = 'Current Task: ',
      store = {
        -- automatically create a .tasks when calling :Do
        auto_create_file = true, 
        file_name = '.tasks',
      },
    }


--noice
require("noice").setup({
   lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
   presets = {
      bottom_search = false,

   }
})

--notify
require("notify").setup()

--markdown
require('render-markdown').setup()

--pairs
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

--copilot chat
require("CopilotChat").setup()

--copilot and copilot cmp
require("copilot_cmp").setup()

require("copilot").setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
})

--rust
require'lspconfig'.rust_analyzer.setup{}

--tree
require("neo-tree").setup({
   window = {
      width = 20,
      auto_expand_width=true,}
})

--veil dashbaor
require("veil").setup()
