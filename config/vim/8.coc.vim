"
" coc
"       :CocUpdate
"       :CocList [options]
"           lists
"           location
"           extensions
"           diagnostics
"           outline
"           symbols
"           services
"           commands
"           links
"           links
"           sources
" 
"       :CocList marketplace
" 
"       ${env:VARIABLE}
" 
"       ${userHome}
"       ${cwd}
"       ${workspaceFolder}
"       ${workspaceFolderBasename}
"       ${file}
"       ${fileBasename}
"       ${fileBasenameNoExtension}
"       ${fileExtname}
"       ${fileDirname}
" 
"       g:WorkspaceFolders
" 
let g:coc_config_home = $REPOSITORY .. '/packages/vim-runtime/coc'
let g:coc_data_home = $REPOSITORY .. '/packages/vim-coc'
let g:coc_global_extensions = [
                        \ 'coc-marketplace',
                        \ 
                        \ 'coc-yank',
                        \ 'coc-highlight',
                        \ 'coc-spell-checker',
                        \ 
                        \ 'coc-lists',
                        \ 'coc-word',
                        \ 'coc-ecdict',
                        \ 'coc-snippets',
                        \
                        \ 'coc-json',
                        \ 'coc-html',
                        \ 'coc-css',
                        \ 'coc-docker',
                        \
                        \ 'coc-sh',
                        \ 'coc-vimlsp',
                        \ 'coc-sqlfluff',
                        \ 'coc-clangd',
                        \ '@yaegassy/coc-ruff',
                        \ 
                        \ 'coc-calc',
                        \ 'coc-git',
                        \ ]
let g:coc_snippet_next = '<TAB>'