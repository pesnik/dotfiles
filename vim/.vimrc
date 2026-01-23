call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'ggml-org/llama.vim'
Plug 'vim-scripts/0x7A69_dark.vim'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

set exrc
" set termguicolors
" set t_Co=256
set background=dark
colorscheme gruvbox
" colorscheme 0x7A69_dark

" llama-server -hf ggml-org/Qwen2.5-Coder-1.5B-Q8_0-GGUF --host 0.0.0.0 --port 8484 -ngl 99 -fa on -ub 1024 -b 1024 --ctx-size 0 --cache-reuse 256
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
