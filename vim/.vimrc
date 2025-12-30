call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'ggml-org/llama.vim'
Plug 'vim-scripts/0x7A69_dark.vim'

call plug#end()

<<<<<<< Updated upstream
" set t_Co=256
" set termguicolors

colorscheme gruvbox
=======
set termguicolors
set t_Co=256
>>>>>>> Stashed changes
set background=dark
" colorscheme gruvbox
colorscheme 0x7A69_dark

let g:llama_config = {
\   'endpoint': 'http://127.0.0.1:8484/infill',
\   'n_prefix': 256,
\   'n_suffix': 64,
\   'n_predict': 128,
\   't_max_prompt_ms': 500,
\   't_max_predict_ms': 3000,
\   'show_info': 1,
\   'auto_fim': v:true,
\}
