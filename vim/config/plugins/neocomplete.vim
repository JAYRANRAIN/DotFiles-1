let g:neocomplete#data_directory='~/.cache/neocomplete'
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_camel_case = 1
"let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_fuzzy_completion = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $CACHE.'/vimshell/command-history',
            \ 'java' : '~/.vim/dict/java.dict',
            \ 'ruby' : '~/.vim/dict/ruby.dict',
            \ 'scala' : '~/.vim/dict/scala.dict',
            \ }

let g:neocomplete#enable_auto_delimiter = 1

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\k*(\?'


" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 0

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.java ='[^. \t0-9]\.\w*'
let g:neocomplete#force_omni_input_patterns = {}
"let g:neocomplete#force_omni_input_patterns.java = '^\s*'
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
