local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    diagnostics = false, -- | "nvim_lsp" | "coc",
    -- diagnostics_update_in_insert = false,
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    show_buffer_close_icons = true,
    show_close_icon = false,
  },
  highlights = {
    fill = {
      guifg = { attribute = "fg", highlight = "#292D3E" },
      guibg = { attribute = "bg", highlight = "#292D3E" },
    },
  },
}

