vim.g.dashboard_custom_footer = {
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
}
vim.g.dashboard_custom_header = {
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
     ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
     ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
     ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
     ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
     ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
     '                                                       ',
}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
  a = {description = {'  New File           '}, command = ':DashboardNewFile'},
  b = {description = {'  Find File          '}, command = 'Telescope find_files'},
  d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
  e = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
  e = {description = {'  Config             '}, command = ':e ~/.config/nvim/init.lua'},
}

vim.cmd 'autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2'
vim.cmd 'highlight dashboardHeader ctermfg=114'
