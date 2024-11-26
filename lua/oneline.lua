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
