return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.djlint,
        null_ls.builtins.diagnostics.tidy,
        null_ls.builtins.formatting.biome,
        null_ls.builtins.formatting.htmlbeautifier,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.diagnostics.cppcheck,
        null_ls.builtins.diagnostics.gccdiag,
        null_ls.builtins.formatting.astyle,
        null_ls.builtins.formatting.uncrustify,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
