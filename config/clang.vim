" -------------vim-clang settings----------------
"  Maybe clang is also work even YCM is enabled
" .clang : -I/include, in the project path
" cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1, set( CMAKE_EXPORT_COMPILE_COMMANDS  1 )
let g:clang_compilation_database = './build'
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11 --pedantic-errors'
let g:clang_format_auto = 1
let g:clang_format_style = 'Google'
let g:clang_check_syntax_auto = 1


