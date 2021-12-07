require("bufferline").setup{
    options = {
    show_buffer_close_icons = true,
    show_close_icon = false,
    diagnostics = false,
    diagnostics_indicator = function()
      return '•'
    end,
  }
}
