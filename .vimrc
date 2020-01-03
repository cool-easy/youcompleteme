call plug#begin('~/.vim/plugged')


Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clangd-completer' }

call plug#end()

set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0             " 关闭补全Preview窗口
"let g:ycm_autoclose_preview_window_after_completion = 1 不全后关闭Preview窗口:
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0                     " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_key_invoke_completion = '<c-z>'            " 手动语义补全
let g:ycm_semantic_triggers = {
                                  \ 'c,cpp,python,java,go,erlang,perl':['re!\w{2}'],
                                  \ 'cs,lua,javascript':['re!\w{2}'],
                                  \ }                " 自动语义补全 
