-- Nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menu,menuone,noselect'

-- nvim-cmp setup
local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
        with_text = false,
        maxwidth = 50
    })
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
      -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
	if not entry then
	  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
	end
	cmp.confirm()
      else
        fallback()
      end
    end, {"i","s","c",}),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, {"i", "s"})  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

vim.cmd 'highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080'
vim.cmd 'highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6'
vim.cmd 'highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6'
vim.cmd 'highlight! CmpItemKindVariable guibg=NONE guifg=#C586C0'
vim.cmd 'highlight! CmpItemKindInterface guibg=NONE guifg=#C586C0'
vim.cmd 'highlight! CmpItemKindText guibg=NONE guifg=#C586C0'
vim.cmd 'highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0'
vim.cmd 'highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0'
vim.cmd 'highlight! CmpItemKindKeyword guibg=NONE guifg=#C586C0'
vim.cmd 'highlight! CmpItemKindProperty guibg=NONE guifg=#C586C0'
vim.cmd 'highlight! CmpItemKindUnit guibg=NONE guifg=#C586C0 '

