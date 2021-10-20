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
  \ 'a': {'description': ['            New File             '], 'command': ':DashboardNewFile'},
  \ 'b': {'description': ['            Find File            '], 'command': 'Telescope find_files' },
  \ 'c': {'description': ['            Find Word            '], 'command': 'Telescope live_grep' },
  \ 'd': {'description': ['            Marks                '], 'command': 'Telescope marks'},
  \ 'e': {'description': ['            Settings             '], 'command': ':e ~/.config/nvim/config/config-main.vim'},
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

autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
highlight dashboardHeader ctermfg=114
