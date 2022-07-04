local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup({
  options = {
    indicator_icon = '',
    modified_icon = '-',
    left_trunc_marker = '',
    right_trunc_marker = '',
    offsets = {
      { filetype = 'NvimTree'},
    },
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
  },
  highlights = {
    buffer_selected = {
      gui = "bold"
    },
  },

})
