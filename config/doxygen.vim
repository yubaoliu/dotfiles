""=================== doxygentoolkit ============""
" sudo apt install doxygen
" sudo apt install graphviz（生成dot需要）
" 注：可使用doxygen
" -g命令生成默认的Doxyfile，cmake则是通过Doxyfile.in来生成Doxyfile
" example: https://blog.csdn.net/u013187057/article/details/103475548
" tutorial - modern cmake doxygen, https://code-examples.net/en/q/2143344
"
" let g:DoxygenToolKit_startCommentBlock = "// "
" let g:DoxygenToolKit_interCommentBlock = "// "

" let g:DoxygenToolkit_briefTag_funcName = "yes"

" for C++ style, change the '@' to '\'
" let g:DoxygenToolkit_commentType = "C++"
" let g:DoxygenToolkit_templateParamTag_pre = "@tparam\t"
" let g:DoxygenToolkit_throwTag_pre = "@throw\t" " @exception is also valid
" let g:DoxygenToolkit_fileTag = "@file\t"
" let g:DoxygenToolkit_dateTag = "@date\t"
" let g:DoxygenToolkit_authorTag = "@author\t"
" let g:DoxygenToolkit_versionTag = "@version "
" let g:DoxygenToolkit_blockTag = "@name\t"
" let g:DoxygenToolkit_classTag = "@class\t"
let g:DoxygenToolkit_authorName = "yubaoliu89@gmail.com"
" let g:doxygen_enhanced_color = 1
" let g:load_doxygen_syntax = 1
" 
" let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
" let g:DoxygenToolkit_paramTag_pre="@Param "
" let g:DoxygenToolkit_returnTag="@Returns   "
" let g:DoxygenToolkit_blockHeader="------------------------------------------------------------------"
" let g:DoxygenToolkit_blockFooter="------------------------------------------------------------------"

let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "see LICENSE.txt file \<enter>"
" let s:licenseTag = s:licenseTag . "All right reserved <enter>"
let g:DoxygenToolkit_licenseTag=s:licenseTag

" nmap ,hh :DoxAuthor<CR><ESC>k8==j$a
" nmap ,ff :Dox<CR><ESC>k8==j$a<TAB>
" nmap ,da :DoxAuthor<CR><ESC>k8==
" nmap ,db :DoxBlock<CR><ESC>k8==
