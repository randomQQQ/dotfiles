let g:dashboard_default_executive = 'telescope'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fm :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

let g:dashboard_custom_section={
  \ 'a': {'description': ['  Find File            '], 'command': 'Telescope find_files' },
  \ 'b': {'description': ['  Find Word            '], 'command': 'Telescope find_files find_command=rg,--hidden,--files' },
  \ 'c': {'description': ['  Marks                '], 'command': 'Telescope marks'},
  \ 'd': {'description': ['  Settings             '], 'command': ':e ~/.config/nvim/init.vim'}
  \ }

let g:dashboard_custom_footer = [
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\    ]

let g:dashboard_custom_header = [
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\]

