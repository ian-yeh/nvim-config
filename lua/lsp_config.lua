require("mason").setup {}
require"mason-lspconfig".setup {}

local function on_attach(client, buffer)

  -- keymap options
  local opts = { buffer = bufnr }

  -- set keymaps
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
end

require"lspconfig".lua_ls.setup {
  on_attach = on_attach
}

require"lspconfig".ts_ls.setup {
  on_attach = on_attach
}
